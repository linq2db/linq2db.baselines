(140939) SELECT 
	t140939.Id = t140938.Id
FROM [DctSetpointtype(140938)] as t140938 (spt)
		LEFT JOIN (
			[VWellTree(140941)] as t140941 (t2)
				INNER JOIN [DctOu(140943)] as t140943 (tp2) ON ({t140941.ShopId?}? = {t140943.Id})
				LEFT JOIN [UacUsersDatagroup(140946)] as t140946 (cudg) ON ({t140943.Id} = {t140946.DatagroupId} AND {t140946.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140951)] as t140951 (oudg) ON ({t140943.ParentId?}? = {t140951.DatagroupId} AND {t140951.UserId} = 150 AND {t140951.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140971)] as t140971 (d) ON ({t140941.WellId?}? = {t140971.WellId})
		)  ON ({t140971.SetpointtypeId} = {t140938.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140946.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140951.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
