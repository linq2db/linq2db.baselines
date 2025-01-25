BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table') IS NOT NULL)
	DROP TABLE [Issue681Table]

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table') IS NULL)
	EXECUTE('
		CREATE TABLE [Issue681Table]
		(
			[ID]    Int NOT NULL,
			[Value] Int NOT NULL,

			CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
		)
	')

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 10

UPDATE
	[Issue681Table]
SET
	[Value] = @Value
FROM
	[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [Issue681Table]
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

BeforeExecute
-- Sybase.Managed Sybase
DECLARE @Value Integer -- Int32
SET     @Value = 10
DECLARE @ID Integer -- Int32
SET     @ID = 5
DECLARE @Value_1 Integer -- Int32
SET     @Value_1 = 10

UPDATE
	[Issue681Table]
SET
	[Value] = @Value
FROM
	[Issue681Table] [t1]
WHERE
	[t1].[ID] = @ID

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [Issue681Table]
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

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'Issue681Table') IS NOT NULL)
	DROP TABLE [Issue681Table]

