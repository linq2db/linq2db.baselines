CREATE OR ALTER FUNCTION dbo.[ProcessLong]
					(
						@secondsNumber int
					)
					RETURNS int
					AS
					BEGIN
						declare @startTime datetime = getutcdate()
						while datediff(second, @startTime, getutcdate()) < @secondsNumber
						begin
							set @startTime = @startTime
						end
						return 1
					END


-- SqlServer.2017
DECLARE @commandExecutionTime Int -- Int32
SET     @commandExecutionTime = 5

SELECT TOP (1)
	dbo.ProcessLong(@commandExecutionTime)
FROM
	[Products] [e]



DROP FUNCTION IF EXISTS [dbo].[ProcessLong]


