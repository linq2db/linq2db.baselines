(504227) SELECT 
	t504227.Id = t504226.Id
FROM [DctSetpointtype(504226)] as t504226 (spt)
		LEFT JOIN (
			[VWellTree(504229)] as t504229 (t2)
				INNER JOIN [DctOu(504231)] as t504231 (tp2) ON ({t504229.ShopId?}? = {t504231.Id})
				LEFT JOIN [UacUsersDatagroup(504234)] as t504234 (cudg) ON ({t504231.Id} = {t504234.DatagroupId} AND {t504234.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(504239)] as t504239 (oudg) ON ({t504231.ParentId?}? = {t504239.DatagroupId} AND {t504239.UserId} = 150 AND {t504239.Inheritablepermission} > 0)
				INNER JOIN [Deviation(504259)] as t504259 (d) ON ({t504229.WellId?}? = {t504259.WellId})
		)  ON ({t504259.SetpointtypeId} = {t504226.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t504234.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t504239.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
