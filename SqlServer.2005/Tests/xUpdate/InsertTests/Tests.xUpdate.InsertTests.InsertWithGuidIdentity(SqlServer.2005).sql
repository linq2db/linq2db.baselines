-- SqlServer.2005
DECLARE @Field1 Int -- Int32
SET     @Field1 = 1

DECLARE @GuidIDOutput TABLE ([ID] UniqueIdentifier)

INSERT INTO [GuidID]
(
	[Field1]
)
OUTPUT [INSERTED].[ID]
INTO @GuidIDOutput
VALUES
(
	@Field1
)

SELECT [ID] FROM @GuidIDOutput

