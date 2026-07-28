-- PostgreSQL.9.3 PostgreSQL
DELETE FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900


-- PostgreSQL.9.3 PostgreSQL
DECLARE @ParentId Integer -- Int32
SET     @ParentId = NULL
DECLARE @Name Varchar(5) -- String
SET     @Name = 'First'
DECLARE @Id Integer -- Int32
SET     @Id = 900

UPDATE
	l2dbnh_orgunits
SET
	parentid = :ParentId,
	name = :Name
WHERE
	l2dbnh_orgunits.id = :Id


-- PostgreSQL.9.3 PostgreSQL
DECLARE @Id Integer -- Int32
SET     @Id = 900
DECLARE @ParentId Integer -- Int32
SET     @ParentId = NULL
DECLARE @Name Varchar(5) -- String
SET     @Name = 'First'

INSERT INTO l2dbnh_orgunits
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


-- PostgreSQL.9.3 PostgreSQL
SELECT
	o.id,
	o.parentid,
	o.name
FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900
LIMIT 2


-- PostgreSQL.9.3 PostgreSQL
DECLARE @ParentId Integer -- Int32
SET     @ParentId = NULL
DECLARE @Name Varchar(6) -- String
SET     @Name = 'Second'
DECLARE @Id Integer -- Int32
SET     @Id = 900

UPDATE
	l2dbnh_orgunits
SET
	parentid = :ParentId,
	name = :Name
WHERE
	l2dbnh_orgunits.id = :Id


-- PostgreSQL.9.3 PostgreSQL
SELECT
	o.id,
	o.parentid,
	o.name
FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900
LIMIT 2


-- PostgreSQL.9.3 PostgreSQL
DECLARE @ParentId Integer -- Int32
SET     @ParentId = NULL
DECLARE @Id Integer -- Int32
SET     @Id = 900

UPDATE
	l2dbnh_orgunits
SET
	parentid = :ParentId
WHERE
	l2dbnh_orgunits.id = :Id


-- PostgreSQL.9.3 PostgreSQL
SELECT
	o.id,
	o.parentid,
	o.name
FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900
LIMIT 2


-- PostgreSQL.9.3 PostgreSQL
DELETE FROM
	l2dbnh_orgunits o
WHERE
	o.id = 900


