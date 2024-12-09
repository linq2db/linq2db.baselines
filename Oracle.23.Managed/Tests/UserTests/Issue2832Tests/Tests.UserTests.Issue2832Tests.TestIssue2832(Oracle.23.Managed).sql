(140839) SELECT 
	t140839.Id = t140838.Id
FROM [DctSetpointtype(140838)] as t140838 (spt)
		LEFT JOIN (
			[VWellTree(140841)] as t140841 (t2)
				INNER JOIN [DctOu(140843)] as t140843 (tp2) ON ({t140841.ShopId?}? = {t140843.Id})
				LEFT JOIN [UacUsersDatagroup(140846)] as t140846 (cudg) ON ({t140843.Id} = {t140846.DatagroupId} AND {t140846.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140851)] as t140851 (oudg) ON ({t140843.ParentId?}? = {t140851.DatagroupId} AND {t140851.UserId} = 150 AND {t140851.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140871)] as t140871 (d) ON ({t140841.WellId?}? = {t140871.WellId})
		)  ON ({t140871.SetpointtypeId} = {t140838.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140846.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140851.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
