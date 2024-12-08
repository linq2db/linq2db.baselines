(245612) SELECT 
	t245612.Id = t245611.Id
FROM [DctSetpointtype(245611)] as t245611 (spt)
		LEFT JOIN (
			[VWellTree(245614)] as t245614 (t2)
				INNER JOIN [DctOu(245616)] as t245616 (tp2) ON ({t245614.ShopId?}? = {t245616.Id})
				LEFT JOIN [UacUsersDatagroup(245619)] as t245619 (cudg) ON ({t245616.Id} = {t245619.DatagroupId} AND {t245619.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(245624)] as t245624 (oudg) ON ({t245616.ParentId?}? = {t245624.DatagroupId} AND {t245624.UserId} = 150 AND {t245624.Inheritablepermission} > 0)
				INNER JOIN [Deviation(245644)] as t245644 (d) ON ({t245614.WellId?}? = {t245644.WellId})
		)  ON ({t245644.SetpointtypeId} = {t245611.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t245619.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t245624.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
