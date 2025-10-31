-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestTable

-- Informix.DB2 Informix

CREATE TEMP TABLE TestTable
(
	Id      Int NOT NULL,
	"Value" Int NOT NULL
)

-- Informix.DB2 Informix

SELECT
	sub.Id_1,
	sub.Value_1,
	sub.Id,
	sub.Value_2,
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
	) sub
		INNER JOIN TestTable t3 ON sub.Id = t3.Id
WHERE
	sub.Id_1 = sub.Id

-- Informix.DB2 Informix

DROP TABLE IF EXISTS TestTable

