%========================================================================
%Name            : Thanh Nguyen
%Web Service     : phylotastic_WebServices
%========================================================================
%========================================================================
%      Operation : phylotastic_FindScientificNamesFromFreeText_GNRD_GET 
%            Input : text
%      Operation : phylotastic_FindScientificNamesFromWebPage_GNRD_GET 
%            Input : url
%      Operation : phylotastic_ResolveScientificNames_OT_TNRS_GET 
%            Input : names
%      Operation : phylotastic_GetPhylogeneticTree_OT_GET 
%            Input : taxa
%========================================================================


% Define Data Type ; Data Format and Reference Classes
data_format(application_x_www_form_urlencoded).
data_format(application_json).
data_format(newick).
data_format(plain_text).
data_format(uri).
data_type(string).
data_type(uri).
data_type(list_of_objects).


% Define Web Service
web_service(phylotastic_WebServices).
has_Operation(phylotastic_WebServices,phylotastic_FindScientificNamesFromFreeText_GNRD_GET).
has_Operation(phylotastic_WebServices,phylotastic_FindScientificNamesFromWebPage_GNRD_GET).
has_Operation(phylotastic_WebServices,phylotastic_ResolveScientificNames_OT_TNRS_GET).
has_Operation(phylotastic_WebServices,phylotastic_GetPhylogeneticTree_OT_GET).


% Define Operation
operation(phylotastic_FindScientificNamesFromFreeText_GNRD_GET).
is_Operation_Of(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,phylotastic_WebServices).
has_Input_Parameter(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,phylotastic_FindScientificNamesFromFreeText_GNRD_GET_In).
has_Output_Parameter(phylotastic_FindScientificNamesFromFreeText_GNRD_GET,phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out).

operation(phylotastic_FindScientificNamesFromWebPage_GNRD_GET).
is_Operation_Of(phylotastic_FindScientificNamesFromWebPage_GNRD_GET,phylotastic_WebServices).
has_Input_Parameter(phylotastic_FindScientificNamesFromWebPage_GNRD_GET,phylotastic_FindScientificNamesFromWebPage_GNRD_GET_In).
has_Output_Parameter(phylotastic_FindScientificNamesFromWebPage_GNRD_GET,phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out).

operation(phylotastic_ResolveScientificNames_OT_TNRS_GET).
is_Operation_Of(phylotastic_ResolveScientificNames_OT_TNRS_GET,phylotastic_WebServices).
has_Input_Parameter(phylotastic_ResolveScientificNames_OT_TNRS_GET,phylotastic_ResolveScientificNames_OT_TNRS_GET_In).
has_Output_Parameter(phylotastic_ResolveScientificNames_OT_TNRS_GET,phylotastic_ResolveScientificNames_OT_TNRS_GET_Out).

operation(phylotastic_GetPhylogeneticTree_OT_GET).
is_Operation_Of(phylotastic_GetPhylogeneticTree_OT_GET,phylotastic_WebServices).
has_Input_Parameter(phylotastic_GetPhylogeneticTree_OT_GET,phylotastic_GetPhylogeneticTree_OT_GET_In).
has_Output_Parameter(phylotastic_GetPhylogeneticTree_OT_GET,phylotastic_GetPhylogeneticTree_OT_GET_Out).


% Define Input Parameter
input_parameter(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_In).
is_Input_Parameter_Of(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_In,phylotastic_FindScientificNamesFromFreeText_GNRD_GET).
has_Parameter_Format(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_In, application_x_www_form_urlencoded).
has_Input_Parameter_Component(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_In, text).

input_parameter(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_In).
is_Input_Parameter_Of(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_In,phylotastic_FindScientificNamesFromWebPage_GNRD_GET).
has_Parameter_Format(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_In, application_x_www_form_urlencoded).
has_Input_Parameter_Component(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_In, url).

input_parameter(phylotastic_ResolveScientificNames_OT_TNRS_GET_In).
is_Input_Parameter_Of(phylotastic_ResolveScientificNames_OT_TNRS_GET_In,phylotastic_ResolveScientificNames_OT_TNRS_GET).
has_Parameter_Format(phylotastic_ResolveScientificNames_OT_TNRS_GET_In, application_x_www_form_urlencoded).
has_Input_Parameter_Component(phylotastic_ResolveScientificNames_OT_TNRS_GET_In, names).

input_parameter(phylotastic_GetPhylogeneticTree_OT_GET_In).
is_Input_Parameter_Of(phylotastic_GetPhylogeneticTree_OT_GET_In,phylotastic_GetPhylogeneticTree_OT_GET).
has_Parameter_Format(phylotastic_GetPhylogeneticTree_OT_GET_In, application_x_www_form_urlencoded).
has_Input_Parameter_Component(phylotastic_GetPhylogeneticTree_OT_GET_In, taxa).


% Define Output Parameter
output_parameter(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out).
is_Output_Parameter_Of(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out,phylotastic_FindScientificNamesFromFreeText_GNRD_GET).
has_Parameter_Format(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out, application_json).
has_Output_Parameter_Component(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out, status_code).
has_Output_Parameter_Component(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out, execution_time).
has_Output_Parameter_Component(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out, scientificNames).

output_parameter(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out).
is_Output_Parameter_Of(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out,phylotastic_FindScientificNamesFromWebPage_GNRD_GET).
has_Parameter_Format(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out, application_json).
has_Output_Parameter_Component(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out, status_code).
has_Output_Parameter_Component(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out, execution_time).
has_Output_Parameter_Component(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out, scientificNames).

output_parameter(phylotastic_ResolveScientificNames_OT_TNRS_GET_Out).
is_Output_Parameter_Of(phylotastic_ResolveScientificNames_OT_TNRS_GET_Out,phylotastic_ResolveScientificNames_OT_TNRS_GET).
has_Parameter_Format(phylotastic_ResolveScientificNames_OT_TNRS_GET_Out, application_json).
has_Output_Parameter_Component(phylotastic_ResolveScientificNames_OT_TNRS_GET_Out, status_code).
has_Output_Parameter_Component(phylotastic_ResolveScientificNames_OT_TNRS_GET_Out, resolvedNames).

output_parameter(phylotastic_GetPhylogeneticTree_OT_GET_Out).
is_Output_Parameter_Of(phylotastic_GetPhylogeneticTree_OT_GET_Out,phylotastic_GetPhylogeneticTree_OT_GET).
has_Parameter_Format(phylotastic_GetPhylogeneticTree_OT_GET_Out, application_json).
has_Output_Parameter_Component(phylotastic_GetPhylogeneticTree_OT_GET_Out, status_code).
has_Output_Parameter_Component(phylotastic_GetPhylogeneticTree_OT_GET_Out, newick).


% Define Input Parameter Components
input_parameter_component(text).
has_Data_Type(text,xs_string).
has_Data_Format(text,waitForSemantics).
is_Input_Parameter_Component_Of(text,phylotastic_FindScientificNamesFromFreeText_GNRD_GET_In).

input_parameter_component(url).
has_Data_Type(url,xs_uri).
has_Data_Format(url,waitForSemantics).
is_Input_Parameter_Component_Of(url,phylotastic_FindScientificNamesFromWebPage_GNRD_GET_In).

input_parameter_component(names).
has_Data_Type(names,xs_string).
has_Data_Format(names,waitForSemantics).
is_Input_Parameter_Component_Of(names,phylotastic_ResolveScientificNames_OT_TNRS_GET_In).

input_parameter_component(taxa).
has_Data_Type(taxa,xs_string).
has_Data_Format(taxa,waitForSemantics).
is_Input_Parameter_Component_Of(taxa,phylotastic_GetPhylogeneticTree_OT_GET_In).


% Define Output Parameter Components
output_parameter_component(status_code).
has_Data_Type(status_code,xs_integer).
has_Data_Format(status_code,waitForSemantics).
is_Output_Parameter_Component_Of(status_code,phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out).
output_parameter_component(execution_time).
has_Data_Type(execution_time,xs_integer).
has_Data_Format(execution_time,waitForSemantics).
is_Output_Parameter_Component_Of(execution_time,phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out).
output_parameter_component(scientificNames).
has_Data_Type(scientificNames,list_of_scientific_names).
has_Data_Format(scientificNames,waitForSemantics).
is_Output_Parameter_Component_Of(scientificNames,phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out).

is_Output_Parameter_Component_Of(status_code,phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out).
is_Output_Parameter_Component_Of(execution_time,phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out).
is_Output_Parameter_Component_Of(scientificNames,phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out).

is_Output_Parameter_Component_Of(status_code,phylotastic_ResolveScientificNames_OT_TNRS_GET_Out).
output_parameter_component(resolvedNames).
has_Data_Type(resolvedNames,list_of_resolved_names).
has_Data_Format(resolvedNames,waitForSemantics).
is_Output_Parameter_Component_Of(resolvedNames,phylotastic_ResolveScientificNames_OT_TNRS_GET_Out).

is_Output_Parameter_Component_Of(status_code,phylotastic_GetPhylogeneticTree_OT_GET_Out).
output_parameter_component(newick).
has_Data_Type(newick,xs_string).
has_Data_Format(newick,waitForSemantics).
is_Output_Parameter_Component_Of(newick,phylotastic_GetPhylogeneticTree_OT_GET_Out).


%------------------------------------------------------------------------
% 4. Defined Static Causal Law
%------------------------------------------------------------------------
holds(satisfy_precondition(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_In),Loop) :- holds(planningHasComponent(text),Loop), not -holds(planningHasInput(phylotastic_WebServices,phylotastic_FindScientificNamesFromFreeText_GNRD_GET,phylotastic_FindScientificNamesFromFreeText_GNRD_GET_In),Loop), step(Loop).
holds(satisfy_precondition(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_In),Loop) :- holds(planningHasComponent(url),Loop), not -holds(planningHasInput(phylotastic_WebServices,phylotastic_FindScientificNamesFromWebPage_GNRD_GET,phylotastic_FindScientificNamesFromWebPage_GNRD_GET_In),Loop), step(Loop).
holds(satisfy_precondition(phylotastic_ResolveScientificNames_OT_TNRS_GET_In),Loop) :- holds(planningHasComponent(names),Loop), not -holds(planningHasInput(phylotastic_WebServices,phylotastic_ResolveScientificNames_OT_TNRS_GET,phylotastic_ResolveScientificNames_OT_TNRS_GET_In),Loop), step(Loop).
holds(satisfy_precondition(phylotastic_GetPhylogeneticTree_OT_GET_In),Loop) :- holds(planningHasComponent(taxa),Loop), not -holds(planningHasInput(phylotastic_WebServices,phylotastic_GetPhylogeneticTree_OT_GET,phylotastic_GetPhylogeneticTree_OT_GET_In),Loop), step(Loop).


