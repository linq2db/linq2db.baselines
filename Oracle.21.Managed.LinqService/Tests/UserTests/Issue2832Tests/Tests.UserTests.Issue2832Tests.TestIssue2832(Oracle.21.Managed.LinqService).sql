(140864) SELECT 
	t140864.Id = t140863.Id
FROM [DctSetpointtype(140863)] as t140863 (spt)
		LEFT JOIN (
			[VWellTree(140866)] as t140866 (t2)
				INNER JOIN [DctOu(140868)] as t140868 (tp2) ON ({t140866.ShopId?}? = {t140868.Id})
				LEFT JOIN [UacUsersDatagroup(140871)] as t140871 (cudg) ON ({t140868.Id} = {t140871.DatagroupId} AND {t140871.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140876)] as t140876 (oudg) ON ({t140868.ParentId?}? = {t140876.DatagroupId} AND {t140876.UserId} = 150 AND {t140876.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140896)] as t140896 (d) ON ({t140866.WellId?}? = {t140896.WellId})
		)  ON ({t140896.SetpointtypeId} = {t140863.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140871.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140876.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
