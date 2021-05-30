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

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 3
DECLARE @F1 Integer(4) -- Int32
SET     @F1 = 3
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '3'

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @F1 Integer(4) -- Int32
SET     @F1 = 2
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '2'

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 6
DECLARE @F1 Integer(4) -- Int32
SET     @F1 = 3
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '3'

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @F1 Integer(4) -- Int32
SET     @F1 = 3
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '3'

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 5
DECLARE @F1 Integer(4) -- Int32
SET     @F1 = 5
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '5'

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 7
DECLARE @F1 Integer(4) -- Int32
SET     @F1 = 2
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '2'

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 4
DECLARE @F1 Integer(4) -- Int32
SET     @F1 = 4
DECLARE @F2 VarChar(1) -- String
SET     @F2 = '4'

INSERT INTO DistinctOrderByTable
(
	Id,
	F1,
	F2
)
VALUES
(
	@Id,
	@F1,
	@F2
)

BeforeExecute
-- Informix.DB2 Informix

SELECT SKIP 2
	t2.F2
FROM
	(
		SELECT DISTINCT
			t1.F1,
			t1.F2
		FROM
			DistinctOrderByTable t1
		ORDER BY
			t1.F1 DESC
	) t2

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS DistinctOrderByTable

