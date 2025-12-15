-- Sybase.Managed Sybase

SELECT
	@@SERVERNAME

-- Sybase.Managed Sybase

SELECT TOP 1
	USER_NAME()
FROM
	[LinqDataTypes] [t1]

-- Sybase.Managed Sybase
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 10

UPDATE
	[dbo].[Issue681Table]
SET
	[Value] = @Value
FROM
	[dbo].[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [dbo].[Issue681Table]
	(
		[ID],
		[Value]
	)
	VALUES
	(
		@ID,
		@Value_1
	)
END

-- Sybase.Managed Sybase
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 10

UPDATE
	[dbo].[Issue681Table]
SET
	[Value] = @Value
FROM
	[dbo].[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [dbo].[Issue681Table]
	(
		[ID],
		[Value]
	)
	VALUES
	(
		@ID,
		@Value_1
	)
END

