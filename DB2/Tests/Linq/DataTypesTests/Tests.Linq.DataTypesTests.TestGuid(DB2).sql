-- DB2 DB2.LUW DB2LUW
DECLARE @Column VarBinary(16) -- Binary
SET     @Column = BX'0D6048A921DE744F8AC29516B287076E'
DECLARE @ColumnNullable VarBinary(16) -- Binary
SET     @ColumnNullable = BX'A57339BD2343D84D9F4FDF9F93E2A627'

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"GuidTable" "r"
WHERE
	"r"."Column" = @Column AND "r"."ColumnNullable" = @ColumnNullable

-- DB2 DB2.LUW DB2LUW

SELECT
	"r"."Id",
	"r"."Column",
	"r"."ColumnNullable"
FROM
	"GuidTable" "r"
WHERE
	"r"."Column" = BX'0D6048A921DE744F8AC29516B287076E' AND
	"r"."ColumnNullable" = BX'A57339BD2343D84D9F4FDF9F93E2A627'

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"GuidTable" "t1"

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Column VarBinary(16) -- Binary
SET     @Column = BX'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @ColumnNullable VarBinary -- Binary
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

-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 2
DECLARE @Column VarBinary(16) -- Binary
SET     @Column = BX'0D6048A921DE744F8AC29516B287076E'
DECLARE @ColumnNullable VarBinary(16) -- Binary
SET     @ColumnNullable = BX'A57339BD2343D84D9F4FDF9F93E2A627'

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

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"GuidTable" "t1"

-- DB2 DB2.LUW DB2LUW

INSERT INTO "GuidTable"
(
	"Id",
	"Column",
	"ColumnNullable"
)
VALUES
(1,BX'3D667BBCDE0F27438F925D8CC3A11D11',NULL),
(2,BX'0D6048A921DE744F8AC29516B287076E',BX'A57339BD2343D84D9F4FDF9F93E2A627')

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"GuidTable" "t1"

INSERT BULK "GuidTable"

-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Column",
	"t1"."ColumnNullable"
FROM
	"GuidTable" "t1"
ORDER BY
	"t1"."Id"

