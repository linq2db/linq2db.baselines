-- Informix.DB2 Informix
INSERT INTO InsertSelectAssociationRow
(
	Pk,
	ID,
	intDataType
)
SELECT
	t2.ID,
	123,
	t2.ID
FROM
	(
		SELECT DISTINCT
			a_Association.ID
		FROM
			InsertSelectAssociationRow t1
				INNER JOIN InsertSelectAssociationRow a_Association ON t1.ID::Int = a_Association.intDataType
		WHERE
			1 = 0
	) t2

-- Informix.DB2 Informix
DECLARE @p SmallInt(2) -- Int16
SET     @p = 1234

INSERT INTO InsertSelectAssociationRow
(
	Pk,
	ID,
	intDataType
)
SELECT
	t2.ID,
	123,
	t2.ID
FROM
	(
		SELECT DISTINCT
			a_Association.ID
		FROM
			InsertSelectAssociationRow t1
				INNER JOIN InsertSelectAssociationRow a_Association ON t1.ID::Int = a_Association.intDataType
		WHERE
			t1.ID = @p
	) t2

-- Informix.DB2 Informix
SELECT
	t1.Pk,
	t1.ID,
	t1.intDataType
FROM
	InsertSelectAssociationRow t1

