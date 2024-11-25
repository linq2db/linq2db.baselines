BeginTransaction(RepeatableRead)


SELECT [i].[Id], [i].[AclNameId], [i].[Capacity], [i].[CfAllowField], [i].[CfAllowValue], [i].[CfDisallowField], [i].[CfDisallowValue], [i].[CfDriven], [i].[CreditGroupId], [i].[DateFrom], [i].[DateTo], [i].[Name], [i].[SendCustomFields]
FROM [Issue4624Items] AS [i]


DisposeTransaction


