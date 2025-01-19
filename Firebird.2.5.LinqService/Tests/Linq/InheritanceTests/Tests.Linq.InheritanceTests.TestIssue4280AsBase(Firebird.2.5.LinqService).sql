BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @SerialNumber VarChar(7) -- String
SET     @SerialNumber = 'TV00001'
DECLARE @DeviceType VarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location VarChar(9) -- String
SET     @Location = 'Something'

INSERT INTO "Issue4280"
(
	"Id",
	"SerialNumber",
	"DeviceType",
	"Location"
)
VALUES
(
	@Id,
	@SerialNumber,
	@DeviceType,
	@Location
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @SerialNumber VarChar(9) -- String
SET     @SerialNumber = 'Disp00001'
DECLARE @DeviceType VarChar(7) -- String
SET     @DeviceType = 'DISPLAY'

INSERT INTO "Issue4280"
(
	"Id",
	"SerialNumber",
	"DeviceType"
)
VALUES
(
	@Id,
	@SerialNumber,
	@DeviceType
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."DeviceType",
	"t1"."Id",
	"t1"."SerialNumber",
	"t1"."Location"
FROM
	"Issue4280" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @SerialNumber VarChar(7) -- String
SET     @SerialNumber = 'TV00002'
DECLARE @DeviceType VarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location VarChar(8) -- String
SET     @Location = 'Anything'
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	"Issue4280" "t1"
SET
	"SerialNumber" = CAST(@SerialNumber AS VARCHAR(7)),
	"DeviceType" = CAST(@DeviceType AS VARCHAR(2)),
	"Location" = CAST(@Location AS VARCHAR(8))
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @SerialNumber VarChar(9) -- String
SET     @SerialNumber = 'Disp00002'
DECLARE @DeviceType VarChar(7) -- String
SET     @DeviceType = 'DISPLAY'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	"Issue4280" "t1"
SET
	"SerialNumber" = CAST(@SerialNumber AS VARCHAR(9)),
	"DeviceType" = CAST(@DeviceType AS VARCHAR(7))
WHERE
	"t1"."Id" = @Id

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1"."DeviceType",
	"t1"."Id",
	"t1"."SerialNumber",
	"t1"."Location"
FROM
	"Issue4280" "t1"
ORDER BY
	"t1"."Id"

