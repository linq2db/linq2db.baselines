(140093) SELECT 
	t140093.Id = t140092.Id
FROM [DctSetpointtype(140092)] as t140092 (spt)
		LEFT JOIN (
			[VWellTree(140095)] as t140095 (t2)
				INNER JOIN [DctOu(140097)] as t140097 (tp2) ON ({t140095.ShopId?}? = {t140097.Id})
				LEFT JOIN [UacUsersDatagroup(140100)] as t140100 (cudg) ON ({t140097.Id} = {t140100.DatagroupId} AND {t140100.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140105)] as t140105 (oudg) ON ({t140097.ParentId?}? = {t140105.DatagroupId} AND {t140105.UserId} = 150 AND {t140105.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140125)] as t140125 (d) ON ({t140095.WellId?}? = {t140125.WellId})
		)  ON ({t140125.SetpointtypeId} = {t140092.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140100.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140105.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
