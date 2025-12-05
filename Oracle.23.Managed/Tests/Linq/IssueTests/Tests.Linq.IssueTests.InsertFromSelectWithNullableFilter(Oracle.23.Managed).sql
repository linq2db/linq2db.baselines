-- Oracle.23.Managed Oracle.Managed Oracle12

INSERT INTO "InsertIssueTest"
(
	"Pk",
	ID,
	"intDataType"
)
SELECT
	CAST(t2.ID AS Int),
	123,
	CAST(t2.ID AS Int)
FROM
	(
		SELECT DISTINCT
			a_Association.ID
		FROM
			"InsertIssueTest" t1
				INNER JOIN "InsertIssueTest" a_Association ON t1.ID = a_Association."intDataType"
		WHERE
			1 = 0
	) t2

-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @cond Int16
SET     @cond = 1234

INSERT INTO "InsertIssueTest"
(
	"Pk",
	ID,
	"intDataType"
)
SELECT
	CAST(t2.ID AS Int),
	123,
	CAST(t2.ID AS Int)
FROM
	(
		SELECT DISTINCT
			a_Association.ID
		FROM
			"InsertIssueTest" t1
				INNER JOIN "InsertIssueTest" a_Association ON t1.ID = a_Association."intDataType"
		WHERE
			t1.ID = :cond
	) t2

-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	t1."Pk",
	t1.ID,
	t1."intDataType"
FROM
	"InsertIssueTest" t1

