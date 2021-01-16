BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE Issue1192Table
(
	IdId      Int NOT NULL,
	MyOtherId Int NOT NULL,
	Status    Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 1
	(
		SELECT
			Count(*)
		FROM
			Issue1192Table t
		WHERE
			t.Status = 3 AND t.MyOtherId = 12
	)
FROM
	Issue1192Table t_1
WHERE
	t_1.MyOtherId = 12

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE Issue1192Table

