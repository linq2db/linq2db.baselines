-- YDB Ydb
INSERT INTO InsertSelectAssociationRow
(
	Pk,
	ID,
	intDataType
)
SELECT
	t2.ID as Pk,
	123s as ID,
	t2.ID as intDataType
FROM
	(
		SELECT DISTINCT
			a_Association.ID as ID
		FROM
			InsertSelectAssociationRow t1
				INNER JOIN InsertSelectAssociationRow a_Association ON Unwrap(CAST(t1.ID AS Int32)) = a_Association.intDataType
		WHERE
			1 = 0
	) t2

-- YDB Ydb
DECLARE p Int16
SET     p = 1234s

INSERT INTO InsertSelectAssociationRow
(
	Pk,
	ID,
	intDataType
)
SELECT
	t2.ID as Pk,
	123s as ID,
	t2.ID as intDataType
FROM
	(
		SELECT DISTINCT
			a_Association.ID as ID
		FROM
			InsertSelectAssociationRow t1
				INNER JOIN InsertSelectAssociationRow a_Association ON Unwrap(CAST(t1.ID AS Int32)) = a_Association.intDataType
		WHERE
			t1.ID = $p
	) t2

-- YDB Ydb
SELECT
	t1.Pk as Pk,
	t1.ID as ID,
	t1.intDataType as intDataType
FROM
	InsertSelectAssociationRow t1

