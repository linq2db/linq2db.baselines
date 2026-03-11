-- PostgreSQL.18 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1111

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

-- PostgreSQL.18 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2111

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

-- PostgreSQL.18 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 3111

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

-- PostgreSQL.18 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 4111

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

-- PostgreSQL.18 PostgreSQL

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(1111,1111),
(2111,2111),
(3111,3111),
(4111,4111)

-- PostgreSQL.18 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1111

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

-- PostgreSQL.18 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2111

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

-- PostgreSQL.18 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 3111

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

-- PostgreSQL.18 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 4111

DELETE FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

