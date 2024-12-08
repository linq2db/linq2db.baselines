(250771) SELECT 
	t250771.Id = t250770.Id
FROM [DctSetpointtype(250770)] as t250770 (spt)
		LEFT JOIN (
			[VWellTree(250773)] as t250773 (t2)
				INNER JOIN [DctOu(250775)] as t250775 (tp2) ON ({t250773.ShopId?}? = {t250775.Id})
				LEFT JOIN [UacUsersDatagroup(250778)] as t250778 (cudg) ON ({t250775.Id} = {t250778.DatagroupId} AND {t250778.UserId} = 150)
				LEFT JOIN [UacUsersDatagroup(250783)] as t250783 (oudg) ON ({t250775.ParentId?}? = {t250783.DatagroupId} AND {t250783.UserId} = 150 AND {t250783.Inheritablepermission} > 0)
				INNER JOIN [Deviation(250803)] as t250803 (d) ON ({t250773.WellId?}? = {t250803.WellId})
		)  ON ({t250803.SetpointtypeId} = {t250770.Id} AND {UTILS.GREATESTNOTNULL3(CAST(t250778.Permission AS (System.Nullable`1[System.Decimal], Decimal)), CAST(t250783.Inheritablepermission AS (System.Nullable`1[System.Decimal], Decimal)), NULL)?}? IS NOT NULL)
