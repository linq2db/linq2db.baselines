(106739) SELECT 
	t106739.Id = t106738.Id
FROM [DctSetpointtype(106738)] as t106738 (spt)
		LEFT JOIN (
			[VWellTree(106741)] as t106741 (t2)
				INNER JOIN [DctOu(106743)] as t106743 (tp2) ON ({t106741.ShopId?}? = {t106743.Id})
				LEFT JOIN [UacUsersDatagroup(106746)] as t106746 (cudg) ON ({t106743.Id} = {t106746.DatagroupId} AND {t106746.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(106751)] as t106751 (oudg) ON ({t106743.ParentId?}? = {t106751.DatagroupId} AND {t106751.UserId} = 150 AND {t106751.Inheritablepermission} > 0)
				INNER JOIN [Deviation(106771)] as t106771 (d) ON ({t106741.WellId?}? = {t106771.WellId})
		)  ON ({t106771.SetpointtypeId} = {t106738.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t106746.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t106751.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
