BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue680Table

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS Issue680Table
(
	"TimeStamp" datetime year to fraction NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	COUNT(CASE
		WHEN g_1."TimeStamp" > TO_DATE('2020-02-29 17:54:55.12312', '%Y-%m-%d %H:%M:%S.%F5')
			THEN 1
		ELSE NULL
	END)
FROM
	Issue680Table g_1
GROUP BY
	g_1."TimeStamp"

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS Issue680Table

