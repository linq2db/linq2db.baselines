﻿BeforeExecute
-- Firebird4 Firebird

SELECT
	Max("t1".ID)
FROM
	"AllTypes" "t1"

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = '	'

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = '
'

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = ''

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = ''

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = ''

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = ' '

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = _utf8 x'00'

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @Char_1 Char -- String
SET     @Char_1 = NULL

INSERT INTO "AllTypes"
(
	"char20DataType"
)
VALUES
(
	Cast(@Char_1 as NChar(1))
)

BeforeExecute
-- Firebird4 Firebird
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
-- Firebird4 Firebird
DECLARE @lastId Integer -- Int32
SET     @lastId = 2

DELETE FROM
	"AllTypes" "t1"
WHERE
	"t1".ID > @lastId

