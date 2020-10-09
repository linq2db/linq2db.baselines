BeforeExecute
-- Oracle.Managed Oracle12

CREATE GLOBAL TEMPORARY TABLE IsTemporaryTable
(
	Id    Int NOT NULL,
	Value Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- Oracle.Managed Oracle12

SELECT
	t1.Id,
	t1.Value
FROM
	IsTemporaryTable t1

BeforeExecute
-- Oracle.Managed Oracle12

DROP TABLE IsTemporaryTable

