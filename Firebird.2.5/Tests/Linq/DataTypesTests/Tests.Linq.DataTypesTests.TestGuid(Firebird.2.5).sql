BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Column Guid
SET     @Column = X'A948600DDE214F748AC29516B287076E'
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = X'BD3973A543234DD89F4FDF9F93E2A627'

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"GuidTable" "r"
WHERE
	"r"."Column" = @Column AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"GuidTable" "r"
WHERE
	"r"."Column" = X'A948600DDE214F748AC29516B287076E' AND
	"r"."ColumnNullable" = X'BD3973A543234DD89F4FDF9F93E2A627'

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"GuidTable" "t1"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column Guid
SET     @Column = X'BC7B663D0FDE43278F925D8CC3A11D11'
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = NULL

INSERT INTO "GuidTable"
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
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column Guid
SET     @Column = X'A948600DDE214F748AC29516B287076E'
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = X'BD3973A543234DD89F4FDF9F93E2A627'

INSERT INTO "GuidTable"
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
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"GuidTable" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "GuidTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,X'BC7B663D0FDE43278F925D8CC3A11D11',NULL FROM rdb$database UNION ALL
SELECT 2,X'A948600DDE214F748AC29516B287076E',X'BD3973A543234DD89F4FDF9F93E2A627' FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"GuidTable" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "GuidTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,X'BC7B663D0FDE43278F925D8CC3A11D11',NULL FROM rdb$database UNION ALL
SELECT 2,X'A948600DDE214F748AC29516B287076E',X'BD3973A543234DD89F4FDF9F93E2A627' FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

