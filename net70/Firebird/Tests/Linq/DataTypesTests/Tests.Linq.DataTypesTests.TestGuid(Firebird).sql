BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GuidTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "GuidTable"';
END

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GuidTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "GuidTable"
			(
				"Id"             Int                           NOT NULL,
				"Column"         CHAR(16) CHARACTER SET OCTETS NOT NULL,
				"ColumnNullable" CHAR(16) CHARACTER SET OCTETS
			)
		';
END

BeforeExecute
-- Firebird

INSERT INTO "GuidTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,X'BC7B663D0FDE43278F925D8CC3A11D11',NULL FROM rdb$database UNION ALL
SELECT 2,X'A948600DDE214F748AC29516B287076E',X'BD3973A543234DD89F4FDF9F93E2A627' FROM rdb$database

BeforeExecute
-- Firebird
DECLARE @Column_1 Guid
SET     @Column_1 = X'A948600DDE214F748AC29516B287076E'
DECLARE @ColumnNullable Guid
SET     @ColumnNullable = X'BD3973A543234DD89F4FDF9F93E2A627'

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"GuidTable" "r"
WHERE
	"r"."Column" = @Column_1 AND "r"."ColumnNullable" = @ColumnNullable

BeforeExecute
-- Firebird

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
-- Firebird

DELETE FROM
	"GuidTable" "t1"

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @Column_1 Guid
SET     @Column_1 = X'BC7B663D0FDE43278F925D8CC3A11D11'
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
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @Column_1 Guid
SET     @Column_1 = X'A948600DDE214F748AC29516B287076E'
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
	@Column_1,
	@ColumnNullable
)

BeforeExecute
-- Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

DELETE FROM
	"GuidTable" "t1"

BeforeExecute
-- Firebird

INSERT INTO "GuidTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,X'BC7B663D0FDE43278F925D8CC3A11D11',NULL FROM rdb$database UNION ALL
SELECT 2,X'A948600DDE214F748AC29516B287076E',X'BD3973A543234DD89F4FDF9F93E2A627' FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

DELETE FROM
	"GuidTable" "t1"

BeforeExecute
-- Firebird

INSERT INTO "GuidTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
SELECT 1,X'BC7B663D0FDE43278F925D8CC3A11D11',NULL FROM rdb$database UNION ALL
SELECT 2,X'A948600DDE214F748AC29516B287076E',X'BD3973A543234DD89F4FDF9F93E2A627' FROM rdb$database

BeforeExecute
-- Firebird

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'GuidTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "GuidTable"';
END

