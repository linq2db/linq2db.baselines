BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ID Int16
SET     @ID = 0

INSERT INTO "AllTypes"
(
	"smallintDataType",
	"intDataType"
)
SELECT
	123,
	Cast(t2.ID as Int)
FROM
	(
		SELECT DISTINCT
			a_Association."smallintDataType" as ID
		FROM
			"AllTypes" t1
				INNER JOIN "AllTypes" a_Association ON t1."smallintDataType" = a_Association."intDataType"
		WHERE
			Cast(t1."smallintDataType" as Int) = :ID
	) t2

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @ID Int16
SET     @ID = 1234

INSERT INTO "AllTypes"
(
	"smallintDataType",
	"intDataType"
)
SELECT
	123,
	Cast(t2.ID as Int)
FROM
	(
		SELECT DISTINCT
			a_Association."smallintDataType" as ID
		FROM
			"AllTypes" t1
				INNER JOIN "AllTypes" a_Association ON t1."smallintDataType" = a_Association."intDataType"
		WHERE
			Cast(t1."smallintDataType" as Int) = :ID
	) t2

