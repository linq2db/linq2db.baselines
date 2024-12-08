(140815) SELECT 
	t140815.Id = t140814.Id
FROM [DctSetpointtype(140814)] as t140814 (spt)
		LEFT JOIN (
			[VWellTree(140817)] as t140817 (t2)
				INNER JOIN [DctOu(140819)] as t140819 (tp2) ON ({t140817.ShopId?}? = {t140819.Id})
				LEFT JOIN [UacUsersDatagroup(140822)] as t140822 (cudg) ON ({t140819.Id} = {t140822.DatagroupId} AND {t140822.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(140827)] as t140827 (oudg) ON ({t140819.ParentId?}? = {t140827.DatagroupId} AND {t140827.UserId} = 150 AND {t140827.Inheritablepermission} > 0)
				INNER JOIN [Deviation(140847)] as t140847 (d) ON ({t140817.WellId?}? = {t140847.WellId})
		)  ON ({t140847.SetpointtypeId} = {t140814.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t140822.Permission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), CAST(t140827.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal, "28", "10")), NULL)?}? IS NOT NULL)
