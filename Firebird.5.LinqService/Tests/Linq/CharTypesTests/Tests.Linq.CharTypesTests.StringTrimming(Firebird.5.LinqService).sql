BeforeExecute
-- Firebird.5 Firebird4

SELECT
	MAX("t1".ID)
FROM
	"AllTypes" "t1"

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(6) -- String
SET     @String = 'test01'

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(8) -- String
SET     @String = 'test02  '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(8) -- String
SET     @String = 'test03	 '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(8) -- String
SET     @String = 'test04
 '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(8) -- String
SET     @String = 'test05 '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(8) -- String
SET     @String = 'test06 '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(8) -- String
SET     @String = 'test07 '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(11) -- String
SET     @String = 'test09     '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(11) -- String
SET     @String = 'test10     '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(11) -- String
SET     @String = 'test11     '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(11) -- String
SET     @String = 'test12     '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(11) -- String
SET     @String = 'test13     '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(11) -- String
SET     @String = 'test14     '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(11) -- String
SET     @String = 'test15     '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(11) -- String
SET     @String = 'test16     '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(11) -- String
SET     @String = 'test17     '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(11) -- String
SET     @String = 'test18     '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(11) -- String
SET     @String = 'test19     '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(11) -- String
SET     @String = 'test20     '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar(10) -- String
SET     @String = _utf8 x'74657374323100202020'

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @String VarChar -- String
SET     @String = NULL

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	@String
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @lastId Integer -- Int32
SET     @lastId = 2

SELECT
	"t1".ID,
	"t1"."char20DataType"
FROM
	"AllTypes" "t1"
WHERE
	"t1".ID > @lastId
ORDER BY
	"t1".ID

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @lastId Integer -- Int32
SET     @lastId = 2

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1".ID > @lastId

