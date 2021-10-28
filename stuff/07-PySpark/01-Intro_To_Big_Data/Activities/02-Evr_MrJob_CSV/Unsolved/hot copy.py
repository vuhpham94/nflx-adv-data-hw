"""
Find the number of hot days in Austin for 2017
"""
from mrjob.job import MRJob

class HotDays(MRJob):
    def mapper(self, key, line):
        (station, name, state, date, snow, tmax, tmin)=line.split(",")
        if tmax and int(tmax) >=100:
            yield name, 1
    def reducer(self, name, hot):
        yield name, sum(hot)

if __name__ == "__main__":
    HotDays.run()