-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @String Char(6) -- String
SET     @String = 'test01'

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @String Char(8) -- String
SET     @String = 'test02  '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @String Char(8) -- String
SET     @String = 'test03	 '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @String Char(8) -- String
SET     @String = 'test04
 '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @String Char(8) -- String
SET     @String = 'test05 '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @String Char(8) -- String
SET     @String = 'test06 '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @String Char(8) -- String
SET     @String = 'test07 '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @String Char(11) -- String
SET     @String = 'test09     '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @String Char(11) -- String
SET     @String = 'test10     '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @String Char(11) -- String
SET     @String = 'test11     '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @String Char(11) -- String
SET     @String = 'test12     '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 12
DECLARE @String Char(11) -- String
SET     @String = 'test13     '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 13
DECLARE @String Char(11) -- String
SET     @String = 'test14     '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 14
DECLARE @String Char(11) -- String
SET     @String = 'test15     '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 15
DECLARE @String Char(11) -- String
SET     @String = 'test16     '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 16
DECLARE @String Char(11) -- String
SET     @String = 'test17     '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 17
DECLARE @String Char(11) -- String
SET     @String = 'test18     '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 18
DECLARE @String Char(11) -- String
SET     @String = 'test19     '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 19
DECLARE @String Char(11) -- String
SET     @String = 'test20     '

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @String Char(10) -- String
SET     @String = _utf8 x'74657374323100202020'

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4
DECLARE @Id Integer -- Int32
SET     @Id = 21
DECLARE @String Char -- String
SET     @String = NULL

INSERT INTO "StringTestTable"
(
	"Id",
	"String"
)
VALUES
(
	@Id,
	@String
)

-- Firebird.4 Firebird4

SELECT
	"t1"."Id",
	"t1"."String"
FROM
	"StringTestTable" "t1"
ORDER BY
	"t1"."Id"

