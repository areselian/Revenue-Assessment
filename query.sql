SELECT * FROM revenue_total;
DROP TABLE RevenueInc2013;

SELECT account_id, tr_2012, tr_2013
FROM revenue_total_db
WHERE tr_2012 = 2500
AND tr_2013 = 1000;

SELECT account_id, tr_2013, tr_2014
FROM revenue_total
WHERE tr_2013 >=1000
AND tr_2014 = 0;

CREATE TABLE RevenueGroupA AS
SELECT account_id, tr_2010, tr_2011, tr_2012
FROM revenue_total;

SELECT count(tr_2010) 
FROM RevenueGroupA
where tr_2010 <1000;

CREATE TABLE RevenueGroupB AS
SELECT account_id, tr_2013, tr_2014, tr_2015, tr_2016, tr_2017
FROM revenue_total;

SELECT * FROM RevenueGroupB;

CREATE TABLE RevenueInc2013_2017 AS
SELECT account_id, tr_2013, tr_2014, tr_2015, tr_2016, tr_2017
FROM revenue_total_db
WHERE tr_2013 >= 1000
AND tr_2014 >= tr_2013
AND tr_2015 >= tr_2014
AND tr_2016 >= tr_2015
AND tr_2017 >= tr_2016;

SELECT * FROM revenueinc2013_2017;

CREATE TABLE RevenueDec2013_2017 AS
SELECT account_id, tr_2013, tr_2014, tr_2015, tr_2016, tr_2017
FROM revenue_total
WHERE tr_2013 >= 1000
AND tr_2014 < tr_2013
AND tr_2015 < tr_2014
AND tr_2016 < tr_2015
AND tr_2017 < tr_2016;

SELECT * FROM RevenueDec2013_2017;

DROP TABLE RevenueDec2013_2017;
CREATE TABLE RevenueDec2013_2017 AS
SELECT account_id, tr_2013, tr_2014, tr_2015, tr_2016, tr_2017
FROM revenue_total
WHERE tr_2013 >= 1000
AND tr_2014 < tr_2013
AND tr_2015 < tr_2014
AND tr_2016 < tr_2015
AND tr_2017 < tr_2016;

