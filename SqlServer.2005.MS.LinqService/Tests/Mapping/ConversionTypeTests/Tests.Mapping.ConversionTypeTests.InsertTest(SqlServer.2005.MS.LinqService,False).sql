﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Data NVarChar(50) -- String
SET     @Data = N'***OOO***'

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	@ID,
	@Data
)

BeforeExecute
--  SqlServer.2005.MS SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 2
DECLARE @Data NVarChar(50) -- String
SET     @Data = N'***HHH***'

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	@ID,
	@Data
)

BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

INSERT INTO [TrimTestTable]
(
	[ID],
	[Data]
)
VALUES
(
	3,
	N'***VVV***'
)

BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT
	[r].[ID],
	[r].[Data]
FROM
	[TrimTestTable] [r]
ORDER BY
	[r].[ID]

