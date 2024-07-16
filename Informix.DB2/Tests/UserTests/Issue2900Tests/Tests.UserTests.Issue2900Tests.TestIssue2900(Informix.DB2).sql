BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Request

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Request
(
	Id SERIAL  NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Metric

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Metric
(
	Id        SERIAL  NOT NULL,
	RequestId Int     NOT NULL,
	"Value"   Float       NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t1.not_null,
	t1.Value_1
FROM
	Request a
		LEFT JOIN (
			SELECT
				a_Metrics."Value" as Value_1,
				1 as not_null,
				ROW_NUMBER() OVER (PARTITION BY a_Metrics.RequestId ORDER BY a_Metrics.RequestId) as rn,
				a_Metrics.RequestId
			FROM
				Metric a_Metrics
		) t1 ON a.Id = t1.RequestId AND t1.rn <= 1

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Metric

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Request

