BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Sample

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Sample
(
	SampleId Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Source

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Source
(
	Key1 Int NOT NULL,
	Key2 Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SelectionMap

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS SelectionMap
(
	Key1              Int     NOT NULL,
	Key2              Int     NOT NULL,
	SelectionProperty Decimal NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS YearMap

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS YearMap
(
	StartDate datetime year to fraction NOT NULL,
	EndDate   datetime year to fraction NOT NULL,
	"Year"    Int                       NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	source_2.Id,
	year_1."Year",
	year_1.StartDate,
	year_1.EndDate
FROM
	YearMap year_1
		CROSS JOIN (
			SELECT
				sub.SampleId as Id
			FROM
				(
					SELECT
						source_1.Key1,
						source_1.Key2,
						entity.SampleId
					FROM
						Source source_1,
						Sample entity
				) sub
					INNER JOIN SelectionMap map_1 ON sub.Key1 = map_1.Key1 AND sub.Key2 = map_1.Key2
		) source_2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS YearMap

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS SelectionMap

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Source

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Sample

