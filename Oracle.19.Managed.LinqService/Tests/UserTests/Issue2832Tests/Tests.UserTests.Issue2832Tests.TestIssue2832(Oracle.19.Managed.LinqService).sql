(140136) SELECT 
	t140136.Id = t140135.Id
FROM [DctSetpointtype(140135)] as t140135 (spt)
		LEFT JOIN (
			[VWellTree(140138)] as t140138 (t2)
				INNER JOIN [DctOu(140140)] as t140140 (tp2) ON ({t140138.ShopId?}? = {t140140.Id})
				LEFT JOIN [UacUsersDatagroup(140143)] as t140143 (cudg) ON ({t140140.Id} = {t140143.DatagroupId} AND {t140143.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140148)] as t140148 (oudg) ON ({t140140.ParentId?}? = {t140148.DatagroupId} AND {t140148.UserId} = 150 AND {t140148.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140168)] as t140168 (d) ON ({t140138.WellId?}? = {t140168.WellId})
		)  ON ({t140168.SetpointtypeId} = {t140135.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140143.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140148.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
