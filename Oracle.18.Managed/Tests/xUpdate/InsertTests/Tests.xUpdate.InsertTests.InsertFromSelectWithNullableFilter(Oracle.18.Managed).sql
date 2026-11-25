-- Oracle.18.Managed Oracle.Managed Oracle12
INSERT INTO "InsertSelectAssociationRow"
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
			"InsertSelectAssociationRow" t1
				INNER JOIN "InsertSelectAssociationRow" a_Association ON CAST(t1.ID AS Int) = a_Association."intDataType"
		WHERE
			1 = 0
	) t2

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p Int16
SET     @p = 1234

INSERT INTO "InsertSelectAssociationRow"
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
			"InsertSelectAssociationRow" t1
				INNER JOIN "InsertSelectAssociationRow" a_Association ON CAST(t1.ID AS Int) = a_Association."intDataType"
		WHERE
			t1.ID = :p
	) t2

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	t1."Pk",
	t1.ID,
	t1."intDataType"
FROM
	"InsertSelectAssociationRow" t1

