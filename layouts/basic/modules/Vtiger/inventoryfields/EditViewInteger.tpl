{*<!-- {[The file is published on the basis of YetiForce Public License 5.0 that can be found in the following directory: licenses/LicenseEN.txt or yetiforce.com]} -->*}
{strip}
	<!-- tpl-Base-inventoryfields-EditViewInteger -->
	{assign var=VALUE value=$INVENTORY_MODEL->getEditValue($ITEM_DATA, $FIELD->getColumnName())}
	{assign var="INPUT_TYPE" value='text'}
	{if $FIELD->isReadOnly()}
		{assign var="INPUT_TYPE" value='hidden'}
		<span class="{$FIELD->getColumnName()}Text integerText">
			{$FIELD->getDisplayValue($VALUE, $ITEM_DATA, true)|escape}
		</span>
	{/if}
	<input name="inventory[{$ROW_NO}][{$FIELD->getColumnName()}]" type="{$INPUT_TYPE}" class="form-control form-control-sm {$FIELD->getColumnName()} integerVal" data-validation-engine="validate[funcCall[Vtiger_Integer_Validator_Js.invokeValidation],maxSize[{$FIELD->getRangeValues()}]]" value="{$FIELD->getDisplayValue($VALUE, $ITEM_DATA, true)|escape}" {if $FIELD->isReadOnly()}readonly="readonly" {/if} />
	<!-- /tpl-Base-inventoryfields-EditViewInteger -->
{/strip}
