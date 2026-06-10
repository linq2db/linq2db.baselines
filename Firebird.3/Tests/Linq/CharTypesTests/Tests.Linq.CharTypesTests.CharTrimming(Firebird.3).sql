-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Char Char -- String
SET     @Char = '	'

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 3
DECLARE @Char Char -- String
SET     @Char = '
'

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 4
DECLARE @Char Char -- String
SET     @Char = ''

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 5
DECLARE @Char Char -- String
SET     @Char = ''

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 6
DECLARE @Char Char -- String
SET     @Char = ''

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 7
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 8
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 9
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 10
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 11
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 12
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 13
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 14
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 15
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 16
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 17
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 18
DECLARE @Char Char -- String
SET     @Char = ' '

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 19
DECLARE @Char Char -- String
SET     @Char = _utf8 x'00'

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 20
DECLARE @Char Char -- String
SET     @Char = NULL

INSERT INTO "CharTestTable"
(
	"Id",
	"Char"
)
VALUES
(
	@Id,
	@Char
)

-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Char"
FROM
	"CharTestTable" "t1"
ORDER BY
	"t1"."Id"

