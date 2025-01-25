BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT INTO "AllTypes"
(
	"smallintDataType",
	"intDataType"
)
SELECT
	123,
	CAST(t2.ID AS Int)
FROM
	(
		SELECT DISTINCT
			a_Association."smallintDataType" as ID
		FROM
			"AllTypes" t1
				INNER JOIN "AllTypes" a_Association ON t1."smallintDataType" = a_Association."intDataType"
		WHERE
			1 = 0
	) t2

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ID Int16
SET     @ID = 1234

INSERT INTO "AllTypes"
(
	"smallintDataType",
	"intDataType"
)
SELECT
	123,
	CAST(t2.ID AS Int)
FROM
	(
		SELECT DISTINCT
			a_Association."smallintDataType" as ID
		FROM
			"AllTypes" t1
				INNER JOIN "AllTypes" a_Association ON t1."smallintDataType" = a_Association."intDataType"
		WHERE
			CAST(t1."smallintDataType" AS Int) = :ID
	) t2

