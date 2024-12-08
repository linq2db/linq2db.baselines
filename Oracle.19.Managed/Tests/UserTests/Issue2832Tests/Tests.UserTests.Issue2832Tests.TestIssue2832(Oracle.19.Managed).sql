(140785) SELECT 
	t140785.Id = t140784.Id
FROM [DctSetpointtype(140784)] as t140784 (spt)
		LEFT JOIN (
			[VWellTree(140787)] as t140787 (t2)
				INNER JOIN [DctOu(140789)] as t140789 (tp2) ON ({t140787.ShopId?}? = {t140789.Id})
				LEFT JOIN [UacUsersDatagroup(140792)] as t140792 (cudg) ON ({t140789.Id} = {t140792.DatagroupId} AND {t140792.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140797)] as t140797 (oudg) ON ({t140789.ParentId?}? = {t140797.DatagroupId} AND {t140797.UserId} = 150 AND {t140797.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140817)] as t140817 (d) ON ({t140787.WellId?}? = {t140817.WellId})
		)  ON ({t140817.SetpointtypeId} = {t140784.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140792.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140797.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
