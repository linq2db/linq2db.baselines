BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TEMP TABLE TestTable
(
	Id      Int NOT NULL,
	"Value" Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t4.Id_1,
	t4.Value_1,
	t4.Id,
	t4.Value_2,
	t3.Id,
	t3."Value"
FROM
	(
		SELECT
			t2.Id,
			t1.Id as Id_1,
			t1."Value" as Value_1,
			t2."Value" as Value_2
		FROM
			TestTable t1,
			TestTable t2
	) t4
		INNER JOIN TestTable t3 ON t4.Id = t3.Id
WHERE
	t4.Id_1 = t4.Id

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE TestTable

