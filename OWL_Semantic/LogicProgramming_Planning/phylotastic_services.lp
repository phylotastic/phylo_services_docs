%========================================================================
%Name            : Thanh Nguyen
%Web Service     : phylotastic_WebServices
%========================================================================
%========================================================================
%      Operation : phylotastic_FindScientificNamesFromFreeText_GNRD_GET 
%            Input : text
%      Operation : phylotastic_FindScientificNamesFromWebPage_GNRD_GET 
%            Input : url
%      Operation : phylotastic_ResolvedScientificNames_OT_TNRS_GET 
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
has_Operation(phylotastic_WebServices,phylotastic_ResolvedScientificNames_OT_TNRS_GET).
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

operation(phylotastic_ResolvedScientificNames_OT_TNRS_GET).
is_Operation_Of(phylotastic_ResolvedScientificNames_OT_TNRS_GET,phylotastic_WebServices).
has_Input_Parameter(phylotastic_ResolvedScientificNames_OT_TNRS_GET,phylotastic_ResolvedScientificNames_OT_TNRS_GET_In).
has_Output_Parameter(phylotastic_ResolvedScientificNames_OT_TNRS_GET,phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out).

operation(phylotastic_GetPhylogeneticTree_OT_GET).
is_Operation_Of(phylotastic_GetPhylogeneticTree_OT_GET,phylotastic_WebServices).
has_Input_Parameter(phylotastic_GetPhylogeneticTree_OT_GET,phylotastic_GetPhylogeneticTree_OT_GET_In).
has_Output_Parameter(phylotastic_GetPhylogeneticTree_OT_GET,phylotastic_GetPhylogeneticTree_OT_GET_Out).


% Define Input Parameter
input_parameter(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_In).
is_Input_Parameter_Of(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_In,phylotastic_FindScientificNamesFromFreeText_GNRD_GET).
has_Parameter_Format(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_In, application_x_www_form_urlencoded).
has_Input_Parameter_Component(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_In, free_text).

input_parameter(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_In).
is_Input_Parameter_Of(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_In,phylotastic_FindScientificNamesFromWebPage_GNRD_GET).
has_Parameter_Format(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_In, application_x_www_form_urlencoded).
has_Input_Parameter_Component(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_In, http_URL).

<<<<<<< HEAD
input_parameter(phylotastic_ResolvedScientificNames_OT_TNRS_GET_In).
is_Input_Parameter_Of(phylotastic_ResolvedScientificNames_OT_TNRS_GET_In,phylotastic_ResolvedScientificNames_OT_TNRS_GET).
has_Parameter_Format(phylotastic_ResolvedScientificNames_OT_TNRS_GET_In, application_x_www_form_urlencoded).
has_Input_Parameter_Component(phylotastic_ResolvedScientificNames_OT_TNRS_GET_In, phylotastic_scientific_names).
=======
input_parameter(phylotastic_ResolveScientificNames_OT_TNRS_GET_In).
is_Input_Parameter_Of(phylotastic_ResolveScientificNames_OT_TNRS_GET_In,phylotastic_ResolveScientificNames_OT_TNRS_GET).
has_Parameter_Format(phylotastic_ResolveScientificNames_OT_TNRS_GET_In, application_x_www_form_urlencoded).
has_Input_Parameter_Component(phylotastic_ResolveScientificNames_OT_TNRS_GET_In, phylotastic_scientific_names).
>>>>>>> 18b759681fee11bb1ff4a0b569d33e47f5e84048

input_parameter(phylotastic_GetPhylogeneticTree_OT_GET_In).
is_Input_Parameter_Of(phylotastic_GetPhylogeneticTree_OT_GET_In,phylotastic_GetPhylogeneticTree_OT_GET).
has_Parameter_Format(phylotastic_GetPhylogeneticTree_OT_GET_In, application_x_www_form_urlencoded).
has_Input_Parameter_Component(phylotastic_GetPhylogeneticTree_OT_GET_In, bio_taxa).


% Define Output Parameter
output_parameter(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out).
is_Output_Parameter_Of(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out,phylotastic_FindScientificNamesFromFreeText_GNRD_GET).
has_Parameter_Format(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out, application_json).
has_Output_Parameter_Component(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out, http_status_code_int).
has_Output_Parameter_Component(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out, http_response_time).
has_Output_Parameter_Component(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out, phylotastic_scientific_names).

output_parameter(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out).
is_Output_Parameter_Of(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out,phylotastic_FindScientificNamesFromWebPage_GNRD_GET).
has_Parameter_Format(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out, application_json).
has_Output_Parameter_Component(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out, http_status_code_int).
has_Output_Parameter_Component(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out, http_response_time).
has_Output_Parameter_Component(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out, phylotastic_scientific_names).

<<<<<<< HEAD
output_parameter(phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out).
is_Output_Parameter_Of(phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out,phylotastic_ResolvedScientificNames_OT_TNRS_GET).
has_Parameter_Format(phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out, application_json).
has_Output_Parameter_Component(phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out, http_status_code_int).
has_Output_Parameter_Component(phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out, phylotastic_TNRS_resolved_names).
=======
output_parameter(phylotastic_ResolveScientificNames_OT_TNRS_GET_Out).
is_Output_Parameter_Of(phylotastic_ResolveScientificNames_OT_TNRS_GET_Out,phylotastic_ResolveScientificNames_OT_TNRS_GET).
has_Parameter_Format(phylotastic_ResolveScientificNames_OT_TNRS_GET_Out, application_json).
has_Output_Parameter_Component(phylotastic_ResolveScientificNames_OT_TNRS_GET_Out, http_status_code_int).
has_Output_Parameter_Component(phylotastic_ResolveScientificNames_OT_TNRS_GET_Out, phylotastic_TNRS_resolved_names).
>>>>>>> 18b759681fee11bb1ff4a0b569d33e47f5e84048

output_parameter(phylotastic_GetPhylogeneticTree_OT_GET_Out).
is_Output_Parameter_Of(phylotastic_GetPhylogeneticTree_OT_GET_Out,phylotastic_GetPhylogeneticTree_OT_GET).
has_Parameter_Format(phylotastic_GetPhylogeneticTree_OT_GET_Out, application_json).
has_Output_Parameter_Component(phylotastic_GetPhylogeneticTree_OT_GET_Out, http_status_code_int).
has_Output_Parameter_Component(phylotastic_GetPhylogeneticTree_OT_GET_Out, cdao_species_tree).


% Define Input Parameter Components
input_parameter_component(free_text).
has_Data_Type(free_text,xs_string).
has_Data_Format(free_text,waitForSemantics).
is_Input_Parameter_Component_Of(free_text,phylotastic_FindScientificNamesFromFreeText_GNRD_GET_In).

input_parameter_component(http_URL).
has_Data_Type(http_URL,xs_uri).
has_Data_Format(http_URL,waitForSemantics).
is_Input_Parameter_Component_Of(http_URL,phylotastic_FindScientificNamesFromWebPage_GNRD_GET_In).

input_parameter_component(phylotastic_scientific_names).
has_Data_Type(phylotastic_scientific_names,xs_string).
has_Data_Format(phylotastic_scientific_names,waitForSemantics).
<<<<<<< HEAD
is_Input_Parameter_Component_Of(phylotastic_scientific_names,phylotastic_ResolvedScientificNames_OT_TNRS_GET_In).
=======
is_Input_Parameter_Component_Of(phylotastic_scientific_names,phylotastic_ResolveScientificNames_OT_TNRS_GET_In).
>>>>>>> 18b759681fee11bb1ff4a0b569d33e47f5e84048

input_parameter_component(bio_taxa).
has_Data_Type(bio_taxa,xs_string).
has_Data_Format(bio_taxa,waitForSemantics).
is_Input_Parameter_Component_Of(bio_taxa,phylotastic_GetPhylogeneticTree_OT_GET_In).


% Define Output Parameter Components
output_parameter_component(http_status_code_int).
has_Data_Type(http_status_code_int,xs_integer).
has_Data_Format(http_status_code_int,waitForSemantics).
is_Output_Parameter_Component_Of(http_status_code_int,phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out).
output_parameter_component(http_response_time).
has_Data_Type(http_response_time,xs_integer).
has_Data_Format(http_response_time,waitForSemantics).
is_Output_Parameter_Component_Of(http_response_time,phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out).
output_parameter_component(phylotastic_scientific_names).
has_Data_Type(phylotastic_scientific_names,list_of_scientific_names).
is_Output_Parameter_Component_Of(phylotastic_scientific_names,phylotastic_FindScientificNamesFromFreeText_GNRD_GET_Out).

is_Output_Parameter_Component_Of(http_status_code_int,phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out).
is_Output_Parameter_Component_Of(http_response_time,phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out).
is_Output_Parameter_Component_Of(phylotastic_scientific_names,phylotastic_FindScientificNamesFromWebPage_GNRD_GET_Out).

<<<<<<< HEAD
is_Output_Parameter_Component_Of(http_status_code_int,phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out).
output_parameter_component(phylotastic_TNRS_resolved_names).
has_Data_Type(phylotastic_TNRS_resolved_names,list_of_resolved_names).
has_Data_Format(phylotastic_TNRS_resolved_names,waitForSemantics).
is_Output_Parameter_Component_Of(phylotastic_TNRS_resolved_names,phylotastic_ResolvedScientificNames_OT_TNRS_GET_Out).
=======
is_Output_Parameter_Component_Of(http_status_code_int,phylotastic_ResolveScientificNames_OT_TNRS_GET_Out).
output_parameter_component(phylotastic_TNRS_resolved_names).
has_Data_Type(phylotastic_TNRS_resolved_names,list_of_resolved_names).
has_Data_Format(phylotastic_TNRS_resolved_names,waitForSemantics).
is_Output_Parameter_Component_Of(phylotastic_TNRS_resolved_names,phylotastic_ResolveScientificNames_OT_TNRS_GET_Out).
>>>>>>> 18b759681fee11bb1ff4a0b569d33e47f5e84048

is_Output_Parameter_Component_Of(http_status_code_int,phylotastic_GetPhylogeneticTree_OT_GET_Out).
output_parameter_component(cdao_species_tree).
has_Data_Type(cdao_species_tree,xs_string).
has_Data_Format(cdao_species_tree,waitForSemantics).
is_Output_Parameter_Component_Of(cdao_species_tree,phylotastic_GetPhylogeneticTree_OT_GET_Out).


%------------------------------------------------------------------------
% 4. Defined Static Causal Law
%------------------------------------------------------------------------
holds(satisfy_precondition(phylotastic_FindScientificNamesFromFreeText_GNRD_GET_In),Loop) :- holds(planningHasComponent(free_text),Loop), not -holds(planningHasInput(phylotastic_WebServices,phylotastic_FindScientificNamesFromFreeText_GNRD_GET,phylotastic_FindScientificNamesFromFreeText_GNRD_GET_In),Loop), step(Loop).
holds(satisfy_precondition(phylotastic_FindScientificNamesFromWebPage_GNRD_GET_In),Loop) :- holds(planningHasComponent(http_URL),Loop), not -holds(planningHasInput(phylotastic_WebServices,phylotastic_FindScientificNamesFromWebPage_GNRD_GET,phylotastic_FindScientificNamesFromWebPage_GNRD_GET_In),Loop), step(Loop).
<<<<<<< HEAD
holds(satisfy_precondition(phylotastic_ResolvedScientificNames_OT_TNRS_GET_In),Loop) :- holds(planningHasComponent(phylotastic_scientific_names),Loop), not -holds(planningHasInput(phylotastic_WebServices,phylotastic_ResolvedScientificNames_OT_TNRS_GET,phylotastic_ResolvedScientificNames_OT_TNRS_GET_In),Loop), step(Loop).
=======
holds(satisfy_precondition(phylotastic_ResolveScientificNames_OT_TNRS_GET_In),Loop) :- holds(planningHasComponent(phylotastic_scientific_names),Loop), not -holds(planningHasInput(phylotastic_WebServices,phylotastic_ResolveScientificNames_OT_TNRS_GET,phylotastic_ResolveScientificNames_OT_TNRS_GET_In),Loop), step(Loop).
>>>>>>> 18b759681fee11bb1ff4a0b569d33e47f5e84048
holds(satisfy_precondition(phylotastic_GetPhylogeneticTree_OT_GET_In),Loop) :- holds(planningHasComponent(bio_taxa),Loop), not -holds(planningHasInput(phylotastic_WebServices,phylotastic_GetPhylogeneticTree_OT_GET,phylotastic_GetPhylogeneticTree_OT_GET_In),Loop), step(Loop).


