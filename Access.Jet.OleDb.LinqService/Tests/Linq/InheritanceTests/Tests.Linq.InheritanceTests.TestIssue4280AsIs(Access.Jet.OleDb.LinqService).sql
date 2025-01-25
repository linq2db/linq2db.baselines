BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 2
DECLARE @SerialNumber VarWChar(7) -- String
SET     @SerialNumber = 'TV00001'
DECLARE @DeviceType VarWChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location VarWChar(9) -- String
SET     @Location = 'Something'

INSERT INTO [Issue4280]
(
	[Id],
	[SerialNumber],
	[DeviceType],
	[Location]
)
VALUES
(
	@Id,
	@SerialNumber,
	@DeviceType,
	@Location
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @Id Integer -- Int32
SET     @Id = 1
DECLARE @SerialNumber VarWChar(9) -- String
SET     @SerialNumber = 'Disp00001'
DECLARE @DeviceType VarWChar(7) -- String
SET     @DeviceType = 'DISPLAY'

INSERT INTO [Issue4280]
(
	[Id],
	[SerialNumber],
	[DeviceType]
)
VALUES
(
	@Id,
	@SerialNumber,
	@DeviceType
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[DeviceType],
	[t1].[Id],
	[t1].[SerialNumber],
	[t1].[Location]
FROM
	[Issue4280] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @SerialNumber VarWChar(7) -- String
SET     @SerialNumber = 'TV00002'
DECLARE @DeviceType VarWChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location VarWChar(8) -- String
SET     @Location = 'Anything'
DECLARE @Id Integer -- Int32
SET     @Id = 2

UPDATE
	[Issue4280] [t1]
SET
	[t1].[SerialNumber] = @SerialNumber,
	[t1].[DeviceType] = @DeviceType,
	[t1].[Location] = @Location
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb
DECLARE @SerialNumber VarWChar(9) -- String
SET     @SerialNumber = 'Disp00002'
DECLARE @DeviceType VarWChar(7) -- String
SET     @DeviceType = 'DISPLAY'
DECLARE @Id Integer -- Int32
SET     @Id = 1

UPDATE
	[Issue4280] [t1]
SET
	[t1].[SerialNumber] = @SerialNumber,
	[t1].[DeviceType] = @DeviceType
WHERE
	[t1].[Id] = @Id

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

SELECT
	[t1].[DeviceType],
	[t1].[Id],
	[t1].[SerialNumber],
	[t1].[Location]
FROM
	[Issue4280] [t1]
ORDER BY
	[t1].[Id]

