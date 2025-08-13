﻿BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @SerialNumber NVarChar(7) -- String
SET     @SerialNumber = 'TV00001'
DECLARE @DeviceType NVarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location NVarChar(9) -- String
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
	?,
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @SerialNumber NVarChar(9) -- String
SET     @SerialNumber = 'Disp00001'
DECLARE @DeviceType NVarChar(7) -- String
SET     @DeviceType = 'DISPLAY'

INSERT INTO [Issue4280]
(
	[Id],
	[SerialNumber],
	[DeviceType]
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- Access.Ace.Odbc AccessODBC

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
-- Access.Ace.Odbc AccessODBC
DECLARE @SerialNumber NVarChar(7) -- String
SET     @SerialNumber = 'TV00002'
DECLARE @DeviceType NVarChar(2) -- String
SET     @DeviceType = 'TV'
DECLARE @Location NVarChar(8) -- String
SET     @Location = 'Anything'
DECLARE @Id Int -- Int32
SET     @Id = 2

UPDATE
	[Issue4280] [t1]
SET
	[t1].[SerialNumber] = ?,
	[t1].[DeviceType] = ?,
	[t1].[Location] = ?
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC
DECLARE @SerialNumber NVarChar(9) -- String
SET     @SerialNumber = 'Disp00002'
DECLARE @DeviceType NVarChar(7) -- String
SET     @DeviceType = 'DISPLAY'
DECLARE @Id Int -- Int32
SET     @Id = 1

UPDATE
	[Issue4280] [t1]
SET
	[t1].[SerialNumber] = ?,
	[t1].[DeviceType] = ?
WHERE
	[t1].[Id] = ?

BeforeExecute
-- Access.Ace.Odbc AccessODBC

SELECT
	[t1].[DeviceType],
	[t1].[Id],
	[t1].[SerialNumber],
	[t1].[Location]
FROM
	[Issue4280] [t1]
ORDER BY
	[t1].[Id]

