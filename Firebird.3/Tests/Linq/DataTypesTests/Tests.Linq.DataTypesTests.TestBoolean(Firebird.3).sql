BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Column Boolean
SET     @Column = FALSE
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = TRUE

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Column" = @Column AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"BooleanTable" "r"
WHERE
	"r"."Column" = FALSE AND "r"."ColumnNullable" = TRUE

BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Boolean
SET     @Column = TRUE
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = NULL

INSERT INTO "BooleanTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Boolean
SET     @Column = FALSE
DECLARE @ColumnNullable Boolean
SET     @ColumnNullable = TRUE

INSERT INTO "BooleanTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(
	@Id,
	@Column,
	@ColumnNullable
)

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "BooleanTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,TRUE,NULL FROM rdb$database UNION ALL
SELECT 2,FALSE,TRUE FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.3 Firebird3

DELETE FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "BooleanTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,TRUE,NULL FROM rdb$database UNION ALL
SELECT 2,FALSE,TRUE FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"BooleanTable" "t1"
ORDER BY
	"t1"."Id"

