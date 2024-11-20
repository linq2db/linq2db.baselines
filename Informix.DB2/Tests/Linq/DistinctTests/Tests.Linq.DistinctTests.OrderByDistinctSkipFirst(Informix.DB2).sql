BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DistinctOrderByTable

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS DistinctOrderByTable
(
	Id Int           NOT NULL,
	F1 Int           NOT NULL,
	F2 NVarChar(255)     NULL,
	F3 Int           NOT NULL,

	PRIMARY KEY (Id)
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 8
DECLARE @F1 Integer(4) -- Int32
SET     @F1 = 8
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '8'
DECLARE @F3 Integer(4) -- Int32
SET     @F3 = 5

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @F1 Integer(4) -- Int32
SET     @F1 = 3
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '3'
DECLARE @F3 Integer(4) -- Int32
SET     @F3 = 3

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @F1 Integer(4) -- Int32
SET     @F1 = 2
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '2'
DECLARE @F3 Integer(4) -- Int32
SET     @F3 = 1

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @F1 Integer(4) -- Int32
SET     @F1 = 3
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '3'
DECLARE @F3 Integer(4) -- Int32
SET     @F3 = 4

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @F1 Integer(4) -- Int32
SET     @F1 = 3
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '3'
DECLARE @F3 Integer(4) -- Int32
SET     @F3 = 7

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @F1 Integer(4) -- Int32
SET     @F1 = 5
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '5'
DECLARE @F3 Integer(4) -- Int32
SET     @F3 = 2

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 7
DECLARE @F1 Integer(4) -- Int32
SET     @F1 = 2
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '2'
DECLARE @F3 Integer(4) -- Int32
SET     @F3 = 8

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @F1 Integer(4) -- Int32
SET     @F1 = 4
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '4'
DECLARE @F3 Integer(4) -- Int32
SET     @F3 = 6

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2,
	F3
)
VALUES
(
	@Id,
	@F1,
	@F2,
	@F3
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	t3.F2
FROM
	(
		SELECT DISTINCT
			t2.F1,
			t2.F2
		FROM
			(
				SELECT SKIP 2
					t1.F1,
					t1.F2
				FROM
					DistinctOrderByTable t1
				ORDER BY
					t1.F3 DESC
			) t2
	) t3

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DistinctOrderByTable

