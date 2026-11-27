-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @local TimeStamp -- DateTime
SET     @local = TIMESTAMP '2020-06-15 12:00:00.000000'

SELECT
	EXTRACT(HOUR FROM :local) as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @local TimeStamp -- DateTime
SET     @local = TIMESTAMP '2020-06-15 12:00:00.000000'

SELECT
	From_Tz(CAST(CAST(Add_Months(:local, 6) - GreatEst(EXTRACT(DAY FROM Add_Months(:local, 6)) - EXTRACT(DAY FROM :local), 0) AS timestamp) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(:local AS timestamp(7))), 1), 'SECOND') AS timestamp(7)), To_Char(From_Tz(CAST(:local AS timestamp(7)), 'Europe/Prague'), 'TZH:TZM')) as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @local TimeStamp -- DateTime
SET     @local = TIMESTAMP '2020-06-15 12:00:00.000000'
DECLARE @months Int32
SET     @months = 6

SELECT
	From_Tz(CAST(CAST(Add_Months(:local, :months) - GreatEst(EXTRACT(DAY FROM Add_Months(:local, :months)) - EXTRACT(DAY FROM :local), 0) AS timestamp) + NumToDsInterval(MOD(EXTRACT(SECOND FROM CAST(:local AS timestamp(7))), 1), 'SECOND') AS timestamp(7)), To_Char(From_Tz(CAST(:local AS timestamp(7)), 'Europe/Prague'), 'TZH:TZM')) as "c1"
FROM
	"ZonedRow" r
FETCH NEXT 2 ROWS ONLY

