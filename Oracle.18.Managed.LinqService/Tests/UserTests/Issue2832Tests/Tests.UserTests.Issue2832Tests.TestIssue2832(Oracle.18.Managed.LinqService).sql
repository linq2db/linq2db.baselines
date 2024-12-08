(140934) SELECT 
	t140934.Id = t140933.Id
FROM [DctSetpointtype(140933)] as t140933 (spt)
		LEFT JOIN (
			[VWellTree(140936)] as t140936 (t2)
				INNER JOIN [DctOu(140938)] as t140938 (tp2) ON ({t140936.ShopId?}? = {t140938.Id})
				LEFT JOIN [UacUsersDatagroup(140941)] as t140941 (cudg) ON ({t140938.Id} = {t140941.DatagroupId} AND {t140941.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140946)] as t140946 (oudg) ON ({t140938.ParentId?}? = {t140946.DatagroupId} AND {t140946.UserId} = 150 AND {t140946.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140966)] as t140966 (d) ON ({t140936.WellId?}? = {t140966.WellId})
		)  ON ({t140966.SetpointtypeId} = {t140933.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140941.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140946.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
