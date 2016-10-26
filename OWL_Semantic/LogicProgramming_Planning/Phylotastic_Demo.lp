%========================================================================
% Name     : THANH NGUYEN
% Project  : Web Service Description - Phylotastic Project
%========================================================================
%========================================================================
% Web Service : Forester WS :
%      Operation : FindScientificNamesFromFreeText
%            Input : text
%            Output: status_code, execution_time, scientificNames
%      Operation : FindScientificNamesFromWebPage
%            Input : url
%            Output: status_code, execution_time, scientificNames
%      Operation : getPhylogeneticTree_OT_GET
%            Input : taxa
%            Output: status_code, newick
%      Operation : resolveScientificNames_OT_TNRS_GET
%            Input : names
%            Output: status_code, resolvedNames
%========================================================================
% Define Data Type ; Data Format and Reference Classes
%reference_class(phylogenetic_tree).
%data_type(gene_tree).
%is_Sub_Class_Of(gene_tree, phylogenetic_tree).
%is_Defined_By(phylotgentic_tree, "https://en.wikipedia.org/wiki/Phylogenetic_tree").

reference_class(string).
data_type(string).
is_Defined_By(string, "http://www.w3.org/2001/XMLSchema:String").

reference_class(uri).
data_type(uri).
is_Defined_By(uri, "http://www.w3.org/2001/XMLSchema:anyURI").

data_type(list_of_objects).

data_format(application_x_www_form_urlencoded).
data_format(application_json).
data_format(newick).
data_format(plain_text).
data_format(uri).
reference_class(application_x_www_form_urlencoded).
reference_class(application_json).
reference_class(newick).

is_Defined_By(application_x_www_form_urlencoded, "http://www.w3.org/TR/html401/interact/forms.html").
is_Defined_By(application_json, "https://en.wikipedia.org/wiki/JSON").
is_Defined_By(newick, "https://en.wikipedia.org/wiki/Newick_format").


% Define Web Service
web_service(phylotastic_ws).
has_WSDL(phylotastic_ws, "http://128.123.177.13/WSRegistry/sites/default/files/wsdl/Phylotastic_WS.wsdl").
has_Operation(phylotastic_ws, findScientificNamesFromFreeText).
has_Operation(phylotastic_ws, findScientificNamesFromWebPage).
has_Operation(phylotastic_ws, getPhylogeneticTree_OT_GET).

% Define Operation
operation(findScientificNamesFromFreeText).
is_Operation_Of(findScientificNamesFromFreeText, phylotastic_ws).
has_Input_Parameter(findScientificNamesFromFreeText, findScientificNames_FromText_In).
has_Output_Parameter(findScientificNamesFromFreeText, findScientificNames_FromText_Out).

operation(findScientificNamesFromWebPage).
is_Operation_Of(findScientificNamesFromWebPage, phylotastic_ws).
has_Input_Parameter(findScientificNamesFromWebPage, findScientificNames_FromWebPage_In).
has_Output_Parameter(findScientificNamesFromWebPage, findScientificNames_FromWebPage_Out).

operation(getPhylogeneticTree_OT_GET).
is_Operation_Of(getPhylogeneticTree_OT_GET, phylotastic_ws).
has_Input_Parameter(getPhylogeneticTree_OT_GET, getPhylogeneticTree_OT_GET_In).
has_Output_Parameter(getPhylogeneticTree_OT_GET, getPhylogeneticTree_OT_GET_Out).

operation(resolveScientificNames_OT_TNRS_GET).
is_Operation_Of(resolveScientificNames_OT_TNRS_GET, phylotastic_ws).
has_Input_Parameter(resolveScientificNames_OT_TNRS_GET, resolveScientificNames_OT_TNRS_GET_In).
has_Output_Parameter(resolveScientificNames_OT_TNRS_GET, resolveScientificNames_OT_TNRS_GET_Out).

% Define Input Parameter
input_parameter(findScientificNames_FromText_In).
is_Input_Parameter_Of(findScientificNames_FromText_In, findScientificNamesFromFreeText).
has_Parameter_Format(findScientificNames_FromText_In, application_x_www_form_urlencoded).
has_Input_Parameter_Component(findScientificNames_FromText_In, free_text).


input_parameter(findScientificNames_FromWebPage_In).
is_Input_Parameter_Of(findScientificNames_FromWebPage_In, findScientificNamesFromWebPage).
has_Parameter_Format(findScientificNames_FromWebPage_In, application_x_www_form_urlencoded).
has_Input_Parameter_Component(findScientificNames_FromWebPage_In, http_URL).

input_parameter(getPhylogeneticTree_OT_GET_In).
is_Input_Parameter_Of(getPhylogeneticTree_OT_GET_In, getPhylogeneticTree_OT_GET).
has_Parameter_Format(getPhylogeneticTree_OT_GET_In, application_x_www_form_urlencoded).
has_Input_Parameter_Component(getPhylogeneticTree_OT_GET_In, bio_taxa).

input_parameter(resolveScientificNames_OT_TNRS_GET_In).
is_Input_Parameter_Of(resolveScientificNames_OT_TNRS_GET_In, resolveScientificNames_OT_TNRS_GET).
has_Parameter_Format(resolveScientificNames_OT_TNRS_GET_In, application_x_www_form_urlencoded).
has_Input_Parameter_Component(resolveScientificNames_OT_TNRS_GET_In, scientific_names).

% Define Output Parameter
output_parameter(findScientificNames_FromText_Out).
is_Output_Parameter_Of(findScientificNames_FromText_Out, findScientificNamesFromFreeText).
has_Parameter_Format(findScientificNames_FromText_Out, application_json).
has_Output_Parameter_Component(findScientificNames_FromText_Out, http_status_code_int).
has_Output_Parameter_Component(findScientificNames_FromText_Out, http_response_time).
has_Output_Parameter_Component(findScientificNames_FromText_Out, scientific_names).


output_parameter(findScientificNames_FromWebPage_Out).
is_Output_Parameter_Of(findScientificNames_FromWebPage_Out, findScientificNamesFromWebPage).
has_Parameter_Format(findScientificNames_FromWebPage_Out, application_json).
has_Output_Parameter_Component(findScientificNames_FromWebPage_Out, http_status_code_int).
has_Output_Parameter_Component(findScientificNames_FromWebPage_Out, http_response_time).
has_Output_Parameter_Component(findScientificNames_FromWebPage_Out, scientific_names).

output_parameter(getPhylogeneticTree_OT_GET_Out).
is_Output_Parameter_Of(getPhylogeneticTree_OT_GET_Out, getPhylogeneticTree_OT_GET).
has_Parameter_Format(getPhylogeneticTree_OT_GET_Out, application_json).
has_Output_Parameter_Component(getPhylogeneticTree_OT_GET_Out, http_status_code_int).
has_Output_Parameter_Component(getPhylogeneticTree_OT_GET_Out, cdao_species_tree).

output_parameter(resolveScientificNames_OT_TNRS_GET_Out).
is_Output_Parameter_Of(resolveScientificNames_OT_TNRS_GET_Out, resolveScientificNames_OT_TNRS_GET).
has_Parameter_Format(resolveScientificNames_OT_TNRS_GET_Out, application_json).
has_Output_Parameter_Component(resolveScientificNames_OT_TNRS_GET_Out, http_status_code_int).
has_Output_Parameter_Component(resolveScientificNames_OT_TNRS_GET_Out, bio_taxa).
has_Output_Parameter_Component(resolveScientificNames_OT_TNRS_GET_Out, tnrs_resolved_names).

% Define Input Parameter Components
input_parameter_component(free_text).
has_Data_Type(free_text, string).
has_Data_Format(free_text, plain_text).
is_Input_Parameter_Component_Of(free_text, findScientificNames_FromText_In).

input_parameter_component(http_URL).
has_Data_Type(http_URL, uri).
has_Data_Format(http_URL, uri).
is_Input_Parameter_Component_Of(http_URL, findScientificNames_FromWebPage_In).

input_parameter_component(bio_taxa).
has_Data_Type(bio_taxa, list_of_objects).
has_Data_Format(bio_taxa, application_json).
is_Input_Parameter_Component_Of(bio_taxa, getPhylogeneticTree_OT_GET_In).

input_parameter_component(scientific_names).
has_Data_Type(scientific_names, list_of_objects).
has_Data_Format(scientific_names, application_json).
is_Input_Parameter_Component_Of(scientific_names, resolveScientificNames_OT_TNRS_GET_In).

% Define Output Parameter Components
output_parameter_component(http_status_code_int).
has_Data_Type(http_status_code_int, integer).
has_Data_Format(http_status_code_int, plain_text).
is_Output_Parameter_Component_Of(http_status_code_int, findScientificNames_FromText_Out).
is_Output_Parameter_Component_Of(http_status_code_int, findScientificNames_FromWebPage_Out).
is_Output_Parameter_Component_Of(http_status_code_int, getPhylogeneticTree_OT_GET_Out).

output_parameter_component(http_response_time).
has_Data_Type(http_response_time, double).
has_Data_Format(http_response_time, plain_text).
is_Output_Parameter_Component_Of(http_response_time, findScientificNames_FromText_Out).
is_Output_Parameter_Component_Of(http_response_time, findScientificNames_FromWebPage_Out).

output_parameter_component(scientific_names).
has_Data_Type(scientific_names, list_of_objects).
has_Data_Format(scientific_names, application_json).
is_Output_Parameter_Component_Of(scientific_names, findScientificNames_FromText_Out).
is_Output_Parameter_Component_Of(scientific_names, findScientificNames_FromWebPage_Out).

output_parameter_component(cdao_species_tree).
has_Data_Type(cdao_species_tree, species_tree).
has_Data_Format(cdao_species_tree, newick_tree).
is_Output_Parameter_Component_Of(cdao_species_tree, getPhylogeneticTree_OT_GET_Out).

output_parameter_component(bio_taxa).
has_Data_Type(bio_taxa, list_of_objects).
has_Data_Format(bio_taxa, application_json).
is_Output_Parameter_Component_Of(bio_taxa, resolveScientificNames_OT_TNRS_GET_Out).

output_parameter_component(tnrs_resolved_names).
has_Data_Type(tnrs_resolved_names, list_of_objects).
has_Data_Format(tnrs_resolved_names, application_json).
is_Output_Parameter_Component_Of(tnrs_resolved_names, resolveScientificNames_OT_TNRS_GET_Out).
%------------------------------------------------------------------------
% 4. Defined Static Causal Law
%------------------------------------------------------------------------
%holds(planningHasComponent(bio_taxa),Loop) :- holds(planningHasComponent(scientific_names),Loop).
holds(satisfy_precondition(findScientificNames_FromText_In),Loop) :- holds(planningHasComponent(free_text),Loop), not -holds(planningHasInput(phylotastic_ws,findScientificNamesFromFreeText,findScientificNames_FromText_In), Loop), step(Loop).
holds(satisfy_precondition(findScientificNames_FromWebPage_In),Loop) :- holds(planningHasComponent(http_URL),Loop),not -holds(planningHasInput(phylotastic_ws,findScientificNamesFromWebPage,findScientificNames_FromWebPage_In), Loop), step(Loop).
holds(satisfy_precondition(getPhylogeneticTree_OT_GET_In),Loop) :- holds(planningHasComponent(bio_taxa),Loop),not -holds(planningHasInput(phylotastic_ws,getPhylogeneticTree_OT_GET,getPhylogeneticTree_OT_GET_In), Loop), step(Loop).
holds(satisfy_precondition(resolveScientificNames_OT_TNRS_GET_In),Loop) :- holds(planningHasComponent(scientific_names),Loop),not -holds(planningHasInput(phylotastic_ws,resolveScientificNames_OT_TNRS_GET,resolveScientificNames_OT_TNRS_GET_In), Loop), step(Loop).

holds(planningHasComponent(http_status_code_int),Loop) :- holds(planningHasOutput(phylotastic_ws,findScientificNamesFromFreeText,findScientificNames_FromText_Out), Loop), step(Loop).
holds(planningHasComponent(http_status_code_int),Loop) :- holds(planningHasOutput(phylotastic_ws,findScientificNamesFromWebPage,findScientificNames_FromWebPage_Out), Loop), step(Loop).
holds(planningHasComponent(http_status_code_int),Loop) :- holds(planningHasOutput(phylotastic_ws,getPhylogeneticTree_OT_GET,getPhylogeneticTree_OT_GET_Out), Loop), step(Loop).
holds(planningHasComponent(http_status_code_int),Loop) :- holds(planningHasOutput(phylotastic_ws,resolveScientificNames_OT_TNRS_GET,resolveScientificNames_OT_TNRS_GET_Out), Loop), step(Loop).

holds(planningHasComponent(http_response_time),Loop) :- holds(planningHasOutput(phylotastic_ws,findScientificNamesFromFreeText,findScientificNames_FromText_Out), Loop), step(Loop).
holds(planningHasComponent(http_response_time),Loop) :- holds(planningHasOutput(phylotastic_ws,findScientificNamesFromWebPage,findScientificNames_FromWebPage_Out), Loop), step(Loop).

holds(planningHasComponent(scientific_names),Loop) :- holds(planningHasOutput(phylotastic_ws,findScientificNamesFromFreeText,findScientificNames_FromText_Out), Loop), step(Loop).
holds(planningHasComponent(scientific_names),Loop) :- holds(planningHasOutput(phylotastic_ws,findScientificNamesFromWebPage,findScientificNames_FromWebPage_Out), Loop), step(Loop).

holds(planningHasComponent(cdao_species_tree),Loop) :- holds(planningHasOutput(phylotastic_ws,getPhylogeneticTree_OT_GET,getPhylogeneticTree_OT_GET_Out), Loop), step(Loop).

holds(planningHasComponent(bio_taxa),Loop) :- holds(planningHasOutput(phylotastic_ws,resolveScientificNames_OT_TNRS_GET,resolveScientificNames_OT_TNRS_Out), Loop), step(Loop).
holds(planningHasComponent(tnrs_resolved_names),Loop) :- holds(planningHasOutput(phylotastic_ws,resolveScientificNames_OT_TNRS_GET,resolveScientificNames_OT_TNRS_Out), Loop), step(Loop).
