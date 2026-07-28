-- Oracle.Managed Oracle12
DELETE FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900


-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 900
DECLARE @ParentId Int32
SET     @ParentId = NULL
DECLARE @Name NVarchar2(5) -- String
SET     @Name = 'First'

MERGE INTO l2dbnh_orgunits t1
USING (SELECT :Id AS id FROM SYS.DUAL) s ON
(
	t1.id = s.id
)
WHEN MATCHED THEN
	UPDATE 
	SET
		parentid = :ParentId,
		name = :Name
WHEN NOT MATCHED THEN
	INSERT
	(
		id,
		parentid,
		name
	)
	VALUES
	(
		:Id,
		:ParentId,
		:Name
	)


-- Oracle.Managed Oracle12
SELECT
	o.id,
	o.parentid,
	o.name
FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900
FETCH NEXT 2 ROWS ONLY


-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 900
DECLARE @ParentId Int32
SET     @ParentId = NULL
DECLARE @Name NVarchar2(6) -- String
SET     @Name = 'Second'

MERGE INTO l2dbnh_orgunits t1
USING (SELECT :Id AS id FROM SYS.DUAL) s ON
(
	t1.id = s.id
)
WHEN MATCHED THEN
	UPDATE 
	SET
		parentid = :ParentId,
		name = :Name
WHEN NOT MATCHED THEN
	INSERT
	(
		id,
		parentid,
		name
	)
	VALUES
	(
		:Id,
		:ParentId,
		:Name
	)


-- Oracle.Managed Oracle12
SELECT
	o.id,
	o.parentid,
	o.name
FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900
FETCH NEXT 2 ROWS ONLY


-- Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 900
DECLARE @ParentId Int32
SET     @ParentId = NULL

MERGE INTO l2dbnh_orgunits t1
USING (SELECT :Id AS id FROM SYS.DUAL) s ON
(
	t1.id = s.id
)
WHEN MATCHED THEN
	UPDATE 
	SET
		parentid = :ParentId
WHEN NOT MATCHED THEN
	INSERT
	(
		id,
		parentid,
		name
	)
	VALUES
	(
		:Id,
		:ParentId,
		N'Inserted'
	)


-- Oracle.Managed Oracle12
SELECT
	o.id,
	o.parentid,
	o.name
FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900
FETCH NEXT 2 ROWS ONLY


-- Oracle.Managed Oracle12
DELETE FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900


