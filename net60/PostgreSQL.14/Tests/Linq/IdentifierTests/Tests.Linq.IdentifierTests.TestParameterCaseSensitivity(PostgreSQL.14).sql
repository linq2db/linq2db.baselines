BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS testparams

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

CREATE TABLE IF NOT EXISTS testparams
(
	col2      Int NOT NULL,
	col3      Int NOT NULL,
	"Column1" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @test Integer -- Int32
SET     @test = 0
DECLARE @TEST_1 Integer -- Int32
SET     @TEST_1 = 0
DECLARE @Component_Column1 Integer -- Int32
SET     @Component_Column1 = 1

INSERT INTO testparams
(
	col2,
	col3,
	"Column1"
)
VALUES
(
	:test,
	:TEST_1,
	:Component_Column1
)

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @test Integer -- Int32
SET     @test = 2
DECLARE @TEST_1 Integer -- Int32
SET     @TEST_1 = 3

UPDATE
	testparams
SET
	col2 = :test,
	col3 = :TEST_1
WHERE
	testparams."Column1" = 1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1.col2,
	t1.col3,
	t1."Column1"
FROM
	testparams t1
LIMIT :take

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @TEST Integer -- Int32
SET     @TEST = 2
DECLARE @test_1 Integer -- Int32
SET     @test_1 = 3

UPDATE
	testparams
SET
	col3 = :TEST,
	col2 = :test_1
WHERE
	testparams."Column1" = 1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 2

SELECT
	t1.col2,
	t1.col3,
	t1."Column1"
FROM
	testparams t1
LIMIT :take

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

DROP TABLE IF EXISTS testparams

