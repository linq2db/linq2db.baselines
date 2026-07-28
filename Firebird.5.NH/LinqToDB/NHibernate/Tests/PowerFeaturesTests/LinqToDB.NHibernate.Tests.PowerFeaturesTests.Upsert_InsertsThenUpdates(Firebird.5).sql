-- Firebird.5 Firebird4
DELETE FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900


-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 900
DECLARE @ParentId Integer -- Int32
SET     @ParentId = NULL
DECLARE @Name VarChar(5) -- String
SET     @Name = 'First'

MERGE INTO l2dbnh_orgunits t1
USING (SELECT CAST(@Id AS Int) AS id FROM rdb$database) s ON
(
	t1.id = s.id
)
WHEN MATCHED THEN
	UPDATE 
	SET
		parentid = CAST(@ParentId AS Int),
		name = CAST(@Name AS VARCHAR(5))
WHEN NOT MATCHED THEN
	INSERT
	(
		id,
		parentid,
		name
	)
	VALUES
	(
		CAST(@Id AS Int),
		CAST(@ParentId AS Int),
		CAST(@Name AS VARCHAR(5))
	)


-- Firebird.5 Firebird4
SELECT
	o.id,
	o.parentid,
	o.name
FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900
FETCH NEXT 2 ROWS ONLY


-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 900
DECLARE @ParentId Integer -- Int32
SET     @ParentId = NULL
DECLARE @Name VarChar(6) -- String
SET     @Name = 'Second'

MERGE INTO l2dbnh_orgunits t1
USING (SELECT CAST(@Id AS Int) AS id FROM rdb$database) s ON
(
	t1.id = s.id
)
WHEN MATCHED THEN
	UPDATE 
	SET
		parentid = CAST(@ParentId AS Int),
		name = CAST(@Name AS VARCHAR(6))
WHEN NOT MATCHED THEN
	INSERT
	(
		id,
		parentid,
		name
	)
	VALUES
	(
		CAST(@Id AS Int),
		CAST(@ParentId AS Int),
		CAST(@Name AS VARCHAR(6))
	)


-- Firebird.5 Firebird4
SELECT
	o.id,
	o.parentid,
	o.name
FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900
FETCH NEXT 2 ROWS ONLY


-- Firebird.5 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 900
DECLARE @ParentId Integer -- Int32
SET     @ParentId = NULL

MERGE INTO l2dbnh_orgunits t1
USING (SELECT CAST(@Id AS Int) AS id FROM rdb$database) s ON
(
	t1.id = s.id
)
WHEN MATCHED THEN
	UPDATE 
	SET
		parentid = CAST(@ParentId AS Int)
WHEN NOT MATCHED THEN
	INSERT
	(
		id,
		parentid,
		name
	)
	VALUES
	(
		CAST(@Id AS Int),
		CAST(@ParentId AS Int),
		'Inserted'
	)


-- Firebird.5 Firebird4
SELECT
	o.id,
	o.parentid,
	o.name
FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900
FETCH NEXT 2 ROWS ONLY


-- Firebird.5 Firebird4
DELETE FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900


