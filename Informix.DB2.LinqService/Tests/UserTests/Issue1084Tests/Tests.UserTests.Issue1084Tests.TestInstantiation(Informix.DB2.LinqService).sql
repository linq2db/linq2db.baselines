BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS i1084_person

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS i1084_person
(
	Id            Int NOT NULL,
	"Number"      Int NOT NULL,
	StatusBitmask Int NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Number Integer(4) -- Int32
SET     @Number = 1
DECLARE @StatusBitmask Integer(4) -- Int32
SET     @StatusBitmask = 0

INSERT INTO i1084_person
(
	Id,
	"Number",
	StatusBitmask
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Number Integer(4) -- Int32
SET     @Number = 2
DECLARE @StatusBitmask Integer(4) -- Int32
SET     @StatusBitmask = 0

INSERT INTO i1084_person
(
	Id,
	"Number",
	StatusBitmask
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS i1084_student

BeforeExecute
-- Informix.DB2 Informix

CREATE TABLE IF NOT EXISTS i1084_student
(
	Id            Int           NOT NULL,
	"Number"      NVarChar(255)     NULL,
	StatusBitmask Int           NOT NULL
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Number VarChar(1) -- String
SET     @Number = '1'
DECLARE @StatusBitmask Integer(4) -- Int32
SET     @StatusBitmask = 0

INSERT INTO i1084_student
(
	Id,
	"Number",
	StatusBitmask
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- Informix.DB2 Informix
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Number VarChar(1) -- String
SET     @Number = '2'
DECLARE @StatusBitmask Integer(4) -- Int32
SET     @StatusBitmask = 0

INSERT INTO i1084_student
(
	Id,
	"Number",
	StatusBitmask
)
VALUES
(
	@Id,
	@Number,
	@StatusBitmask
)

BeforeExecute
-- Informix.DB2 Informix

SELECT
	k_1.Id,
	k_1."Number",
	k_1.StatusBitmask,
	BitAnd(k_1.StatusBitmask, 128),
	BitAnd(g_1.StatusBitmask, 128)
FROM
	i1084_person k_1
		LEFT JOIN i1084_student g_1 ON k_1.Id = g_1.Id AND To_Char(k_1."Number") = g_1."Number"

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS i1084_student

BeforeExecute
-- Informix.DB2 Informix

DROP TABLE IF EXISTS i1084_person

