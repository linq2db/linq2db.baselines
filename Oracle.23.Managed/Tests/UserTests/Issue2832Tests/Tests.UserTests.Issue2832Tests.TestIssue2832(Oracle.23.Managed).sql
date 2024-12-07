(140054) SELECT 
	t140054.Id = t140053.Id
FROM [DctSetpointtype(140053)] as t140053 (spt)
		LEFT JOIN (
			[VWellTree(140056)] as t140056 (t2)
				INNER JOIN [DctOu(140058)] as t140058 (tp2) ON ({t140056.ShopId?}? = {t140058.Id})
				LEFT JOIN [UacUsersDatagroup(140061)] as t140061 (cudg) ON ({t140058.Id} = {t140061.DatagroupId} AND {t140061.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140066)] as t140066 (oudg) ON ({t140058.ParentId?}? = {t140066.DatagroupId} AND {t140066.UserId} = 150 AND {t140066.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140086)] as t140086 (d) ON ({t140056.WellId?}? = {t140086.WellId})
		)  ON ({t140086.SetpointtypeId} = {t140053.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140061.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140066.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
