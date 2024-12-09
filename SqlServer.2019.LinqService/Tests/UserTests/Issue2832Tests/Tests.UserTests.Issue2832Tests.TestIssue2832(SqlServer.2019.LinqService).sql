(246742) SELECT 
	t246742.Id = t246741.Id
FROM [DctSetpointtype(246741)] as t246741 (spt)
		LEFT JOIN (
			[VWellTree(246744)] as t246744 (t2)
				INNER JOIN [DctOu(246746)] as t246746 (tp2) ON ({t246744.ShopId?}? = {t246746.Id})
				LEFT JOIN [UacUsersDatagroup(246749)] as t246749 (cudg) ON ({t246746.Id} = {t246749.DatagroupId} AND {t246749.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(246754)] as t246754 (oudg) ON ({t246746.ParentId?}? = {t246754.DatagroupId} AND {t246754.UserId} = 150 AND {t246754.Inheritablepermission} > 0)
				INNER JOIN [Deviation(246774)] as t246774 (d) ON ({t246744.WellId?}? = {t246774.WellId})
		)  ON ({t246774.SetpointtypeId} = {t246741.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t246749.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t246754.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
