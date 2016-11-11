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

%========================================================================
%========================================================================
% PROCESS PART : Define Relationships
%========================================================================
has_Operation(X,Y) :- is_Operation_Of(Y,X), web_service(X), operation(Y).
is_Operation_Of(X,Y) :- has_Operation(Y,X), web_service(Y), operation(X).

has_Input_Parameter(X,Y) :- is_Input_Parameter_Of(Y,X), operation(X), input_parameter(Y).
is_Input_Parameter_Of(X, Y) :- has_Input_Parameter(Y,X), operation(Y), input_parameter(X).

has_Output_Parameter(X,Y) :- is_Output_Parameter_Of(Y,X), operation(X), output_parameter(Y).
is_Output_Parameter_Of(X, Y) :- has_Output_Parameter(Y,X), operation(Y), output_parameter(X).

has_Input_Parameter_Component(X,Y) :- is_Input_Parameter_Component_Of(Y, X), input_parameter(X), input_parameter_component(Y).
is_Input_Parameter_Component_Of(X, Y) :- has_Input_Parameter_Component(Y, X), input_parameter(Y), input_parameter_component(X).

has_Output_Parameter_Component(X,Y) :- is_Output_Parameter_Component_Of(Y, X), output_parameter(X), output_parameter_component(Y).
is_Output_Parameter_Component_Of(X, Y) :- has_Output_Parameter_Component(Y, X), output_parameter(Y), output_parameter_component(X).

operation_has_input_components(OP,I,IC) :- operation(OP), input_parameter(I), input_parameter_component(IC), has_Input_Parameter(OP,I), has_Input_Parameter_Component(I,IC).
operation_has_output_components(OP,O,OC) :- operation(OP), output_parameter(O), output_parameter_component(OC), has_Output_Parameter(OP,O), has_Output_Parameter_Component(O,OC).
%========================================================================
% QUERY PART : Query objects
%========================================================================
list_WS_Input_Params(X, M, Y ,L) :- web_service(X), input_parameter_component(Y), has_Input_Parameter_Component(Z,Y), input_parameter(Z), has_Input_Parameter(M,Z), operation(M), has_Operation(X, M), data_type(L), has_Data_Type(Y, L).
list_WS_Output_Params(X, M, Y, L) :- web_service(X), output_parameter_component(Y), has_Output_Parameter_Component(Z,Y), output_parameter(Z), has_Output_Parameter(M,Z), operation(M), has_Operation(X, M), data_type(L), has_Data_Type(Y, L).

explore_Input_Components(IN, IC, DT, DF) :- input_parameter(IN), input_parameter_component(IC), data_type(DT), data_format(DF), has_Input_Parameter_Component(IN,IC), has_Data_Type(IC,DT), has_Data_Format(IC,DF).
explore_Output_Components(ON, OC, DT, DF) :- output_parameter(ON), output_parameter_component(OC), data_type(DT), data_format(DF), has_Output_Parameter_Component(ON,OC), has_Data_Type(OC,DT), has_Data_Format(OC,DF).
%========================================================================
% PLANNING PART : Build WorkFlow
%========================================================================
#const n = 3.
step(0..n).
%------------------------------------------------------------------------
% ACTION LANGUAGE B DECLARATION
%------------------------------------------------------------------------
% FLUENT
%    planningHasInput(WS,OP,I) : denote that current time, we are having input I, O is input_parameter
%    planningHasOutput(WS,OP,O) : denote that current time, we are having ouput O, O is output_parameter
%    planningHasComponent(C) : denote that current time, we are having parameter component C; C can be input_parameter_component or output_parameter_component
% ACTION
%    run_WS_Operation(WS,OP,I,O) : run operation OP of Web Service WS with input I and return output O ( I is input_parameter = set of input_parameter_componennt)
%								   O is out_parameter = set of out_parameter_component
% DYNAMIC CAUSAL LAW
%	 run_WS_Operation(WS,OP,I,O) causes planningHasOutput(WS,OP,O) if planningHasInput(WS,OP,I)
% STATIC CAUSAL LAW
%    planningHasInput(WS,OP,I) if planningHasComponent(C) for all input_parameter_component C in input_parameter I
%    planningHasComponent(C) if planningHasOutput(WS,OP,O) and C is output_parameter_component of ouput_parameter O
% EXECUTABLE
%    executable run_WS_Operation(WS,OP,I,O) if planningHasInput(WS,OP,I)
%------------------------------------------------------------------------
% INPUT PART : Initial State
%------------------------------------------------------------------------
%% Case 1 : 3 steps
holds(planningHasComponent(http_URL),0).
%% Case 2 : 2 steps
%holds(planningHasComponent(species_names_list),0).
%holds(planningHasComponent(ws_id),0).
%------------------------------------------------------------------------
% ALWAYS AVAILABLE : Design fluents that are always available == It means they are input components that are always availble for using in any WS
%                    Or They are input components that are IN-DEPENDED with Every Web Services
%------------------------------------------------------------------------
%holds(planningHasComponent(tree),0).
%holds(planningHasComponent(format),0).
%------------------------------------------------------------------------
% 1. Defined Fluents
%------------------------------------------------------------------------
fluent(inertial, planningHasComponent(X)) :- input_parameter_component(X).
fluent(inertial, planningHasComponent(X)) :- output_parameter_component(X).
fluent(inertial, planningHasInput(WS,OP,I)) :- web_service(WS), operation(OP), input_parameter(I), has_Operation(WS,OP), has_Input_Parameter(OP,I).
fluent(inertial, planningHasOutput(WS,OP,O)) :- web_service(WS), operation(OP), output_parameter(O), has_Operation(WS,OP), has_Output_Parameter(OP,O).
%------------------------------------------------------------------------
% 2. Defined Action
%------------------------------------------------------------------------
action(run_WS_Operation(WS,OP,I,O)) :- web_service(WS), operation(OP), input_parameter(I), output_parameter(O), has_Operation(WS,OP), has_Input_Parameter(OP,I), has_Output_Parameter(OP,O).
%------------------------------------------------------------------------
% 3. Defined Defined Dynamic Causal Law
%------------------------------------------------------------------------
holds(planningHasOutput(WS,OP,O), Loop+1) :- occurs(run_WS_Operation(WS,OP,I,O),Loop), holds(planningHasInput(WS,OP,I), Loop),step(Loop), Loop<n, web_service(WS), operation(OP), input_parameter(I), output_parameter(O), has_Operation(WS,OP), has_Input_Parameter(OP,I), has_Output_Parameter(OP,O).

-holds(planningHasInput(WS,OP,I), Loop+1) :- occurs(run_WS_Operation(WS,OP,I,O),Loop), holds(planningHasInput(WS,OP,I), Loop) ,step(Loop), Loop<n, web_service(WS), operation(OP), input_parameter(I), output_parameter(O), has_Operation(WS,OP), has_Input_Parameter(OP,I), has_Output_Parameter(OP,O).
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
%-------------------------------------------------------------------------
holds(planningHasInput(WS,OP,I),Loop) :- web_service(WS), operation(OP), input_parameter(I),  has_Input_Parameter(OP,I), has_Operation(WS, OP), step(Loop),holds(satisfy_precondition(I),Loop), Loop <=n.

-holds(planningHasInput(WS,OP,I),Loop) :- not holds(planningHasInput(WS,OP,I),Loop), web_service(WS), operation(OP), input_parameter(I), has_Operation(WS,OP), has_Input_Parameter(OP,I), step(Loop), Loop <= n.

-holds(planningHasOutput(WS,OP,O),Loop) :- not holds(planningHasOutput(WS,OP,O),Loop), web_service(WS), operation(OP), output_parameter(O), has_Operation(WS,OP), has_Output_Parameter(OP,O), step(Loop), Loop <= n.

holds(planningHasComponent(C),Loop) :- holds(planningHasOutput(WS,OP,O),Loop), web_service(WS), operation(OP), output_parameter(O), output_parameter_component(C), has_Output_Parameter_Component(O,C), step(Loop), Loop <= n.

-holds(planningHasComponent(C),Loop) :- not holds(planningHasComponent(C),Loop), input_parameter_component(C) ,step(Loop), Loop <= n.
-holds(planningHasComponent(C),Loop) :- not holds(planningHasComponent(C),Loop), output_parameter_component(C) ,step(Loop), Loop <= n.
%------------------------------------------------------------------------
% 5. Defined Executable
%------------------------------------------------------------------------
-occurs(run_WS_Operation(WS,OP,I,O),Loop) :- -holds(planningHasInput(WS,OP,I), Loop), web_service(WS), operation(OP), input_parameter(I), output_parameter(O), step(Loop).
-occurs(run_WS_Operation(WS,OP,I,O),Loop) :- not holds(planningHasInput(WS,OP,I), Loop), web_service(WS), operation(OP), input_parameter(I), output_parameter(O), step(Loop).
%------------------------------------------------------------------------
% 6. Inertial Axioms
%------------------------------------------------------------------------
holds(planningHasComponent(X), I+1) :- holds(planningHasComponent(X),I), not -holds(planningHasComponent(X),I+1), input_parameter_component(X), step(I), I < n, fluent(inertial, planningHasComponent(X)).
holds(planningHasComponent(X), I+1) :- holds(planningHasComponent(X),I), not -holds(planningHasComponent(X),I+1), output_parameter_component(X), step(I), I < n, fluent(inertial, planningHasComponent(X)).

-holds(planningHasComponent(X), I+1) :- -holds(planningHasComponent(X), I), not holds(planningHasComponent(X), I+1), input_parameter_component(X), step(I), I < n, fluent(inertial,planningHasComponent(X)).
-holds(planningHasComponent(X), I+1) :- -holds(planningHasComponent(X), I), not holds(planningHasComponent(X), I+1), output_parameter_component(X), step(I), I < n, fluent(inertial,planningHasComponent(X)).

%holds(planningHasInput(WS,OP,I), Loop+1) :- holds(planningHasInput(WS,OP,I),Loop), not -holds(planningHasInput(WS,OP,I), Loop+1), input_parameter(I), step(Loop), Loop < n, fluent(inertial, planningHasInput(WS,OP,I)).
%-holds(planningHasInput(WS,OP,I), Loop+1) :- -holds(planningHasInput(WS,OP,I), Loop), not holds(planningHasInput(WS,OP,I), Loop+1), input_parameter(I), step(Loop), Loop < n, fluent(inertial, planningHasInput(WS,OP,I)).

%holds(planningHasOutput(WS,OP,O), Loop+1) :- holds(planningHasOutput(WS,OP,O),Loop), not -holds(planningHasOutput(WS,OP,O), Loop+1), output_parameter(O), step(Loop), Loop < n, fluent(inertial, planningHasOutput(WS,OP,O)).
%-holds(planningHasOutput(WS,OP,O), Loop+1) :- -holds(planningHasOutput(WS,OP,O), Loop), not holds(planningHasOutput(WS,OP,O), Loop+1), output_parameter(O), step(Loop), Loop < n, fluent(inertial, planningHasOutput(WS,OP,O)).
%------------------------------------------------------------------------
% 7. CWA for action
%------------------------------------------------------------------------
-occurs(A,I) :- not occurs(A,I), step(I), action(A).
%------------------------------------------------------------------------
% 9. Goal State
%------------------------------------------------------------------------
goal(I) :- holds(planningHasComponent(cdao_species_tree),I), step(I).
%goal(I) :- holds(planningHasComponent(species_names_list),I), step(I).
success :- goal(I), I <= n, step(I).
:- not success.
1{occurs(A,I):action(A)}1 :- step(I), not goal(I), I < n.
:- action(A1), action(A2), occurs(A1,I), occurs(A2,I), A1 != A2, step(I).
%------------------------------------------------------------------------
%========================================================================
% END PROCESS PART
%========================================================================
%#show list_WS_Input_Params/3.
%#show list_WS_Output_Params/3.
%#show holds/2.
%#show web_service/1.
%#show operation/1.
%#show operation_has_input_components/3.
%#show operation_has_output_components/3.
%#show fluent/2.
#show occurs/2.
#show goal/1.
#show explore_Input_Components/4.
#show explore_Output_Components/4.
