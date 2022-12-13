Dataset Summary
---
This repository provides the RDRS dataset.
```
Task:                 Text Classification

Sub-tasks:            pharmacological Named Entity Recognition (NER); 
                      Relation Extraction (RE); 
                      Coreference Extraction;
                      Text Normalization

Size Categories:      3821 documents; 
                      83910 named entities; 
                      55717 relations

Languages:            Russian, monolingual
Language Creators:    Russian

Annotations Creators: experts
```
| Task | Sub-tasks | Size Categories | Languages | Language Creators | Annotations Creators |
| :-: | :-: | :-: | :-: | :-: | :-: |
| Text Classification | - pharmacological Named<br/>Entity Recognition (NER);<br/>- Relation Extraction (RE);<br/>- Coreference Extraction;<br/>- Text Normalization | 3821 docs;<br/> 83910 entities;<br/> 55717 relations | Russian,<br/>monolingual | Russian | experts |

What is RDRS?
---
Russian Drug Reviews corpus (RDRS) is a Russian-language annotated corpus consisting of medicine reviews posed by Internet users from the [Otzovik web site](https://otzovik.com/), with complex named entity recognition (NER) labeling of pharmaceutically relevant entities, and their relations.
<p align="center"><img src=./assets/annotation_example.png></p>

This is the third version of the corpus (or RDRS-3800), which includes 3,821 reviews. About the previous versions (RDRS-1600 and RDRS-2800), you can read at [link](https://sagteam.ru/en/med-corpus/)).

The main specifications of our corpus are shown in [Statistics section](#statistics).

Information about the data structure, detailed description of the fields and an example for a document from the dataset are presented in [Data Format](#data-format) and [Data Fields](#data-fields) sections.

The materials about annotation procedure described in [Dataset Creation section](#dataset-creation).

Application of the dataset for different tasks is discussed in [Supported Tasks section](#supported-tasks).

Getting Started
---
We've prepared a bash script to help you get started with the dataset.

To download the dataset you need to go to the repository directory ("./RDRS/") and run at cmd:
```bash
. get_data.sh
```

Alternatively, you can follow the steps:
1. Download the data archive [at link](https://sagteam.ru/RDRS/RDRS_v3_folds.tar.gz):
```bash
wget "https://sagteam.ru/RDRS/RDRS_v3_folds.tar.gz" -P ./data/
```
2. Extract the data by using the command:
```bash
tar -xzvf ./data/RDRS_v3_folds.tar.gz -C ./data/
```
3. (Optional) Remove the archive:
```bash
rm -f ./data/RDRS_v3_folds.tar.gz
```


After that you can find the data at "./RDRS/data/" directory.

Data description
---
comming soon


Statistics
---
comming soon


Data Format
---
An example for a document from the dataset is shown below:
```
{
	'text_id': '1083265',
	
	'text': 'http://otzovik.com/review_1083265.html\nTITLE\nОтзыв: Энцефабол - не помог\nTEXT\nКогда нервопатолог выписал нам данный препарат, то сказал что после него все начинают говорить. Пропили мы его 2 мес. Не помог Общее впечатление : не помог\nRATING\n1\nNOTE\n',
	
	'relations': [
		{
			'first_entity': {
				'spans': [{'begin': 52, 'end': 61}],
				'xmiID': 10,
				'text': 'Энцефабол',
			    'MedEntityType': 'Medication',
			    'MedType': 'Drugname',
			    'MedFrom': 'Foreign',
			    'Context': ['1'],
			    'ATC': 'N06BX02',
			    'tag': ['Medication:MedTypeDrugname', 'Medication:MedFromForeign'],
			    'entity_id': 0
			},
			
			'second_entity': {
				'spans': [{'begin': 84, 'end': 104}],
			    'xmiID': 12,
			    'text': 'нервопатолог выписал',
			    'MedEntityType': 'Medication',
			    'MedType': 'SourceInfodrug',
			    'Context': ['1'],
			    'source_group': 'врач назначил',
			    'tag': ['Medication:MedTypeSourceInfodrug'],
			    'entity_id': 2
			},
		
			'relation_type': 'Medication:MedTypeDrugname_Medication:MedTypeSourceInfodrug',
			
			'relation_class': 1
		}
	],
 	
 	'entities': {
 		'0': {
 			'spans': [{'begin': 52, 'end': 61}],
	 		'xmiID': 10,
	 		'text': 'Энцефабол',
	 		'MedEntityType': 'Medication',
	 		'MedType': 'Drugname',
	    	'MedFrom': 'Foreign',
	    	'Context': ['1'],
	    	'ATC': 'N06BX02',
	    	'tag': ['Medication:MedTypeDrugname', 'Medication:MedFromForeign'],
	    	'entity_id': 0
	    },
  		
  		'1': {
  			...
  		},
  		...
  	}
	
	'coreference': {
		'mentions': [
			{'startPos': 84, 'endPos': 96},
			{'startPos': 105, 'endPos': 108},
			{'startPos': 109, 'endPos': 124},
			{'startPos': 146, 'endPos': 150},
    		{'startPos': 182, 'endPos': 184},
		    {'startPos': 185, 'endPos': 188}
		],
   		
   		'clusters': [[0, 3], [1, 4], [2, 5]]
   	},
}
```

Data Fields
---
comming soon

- "text_id" -- 
- "text" -- 
- "relations" -- 
	- "first_entity"
	- "second_entity"
		- 'spans'
			- begin
			- end
		- 'xmiID'
		- 'text'
		- 'MedEntityType'
		- 'MedType'
		- 'MedFrom'
		- 'Context'
		- 'ATC'
		- 'tag'
		- 'entity_id'
- "coreference" -- 
	- startPos
	- endPos

Dataset Creation
---
comming soon

Annotation procedure
---
comming soon

Supported Tasks
---
comming soon

Disclaimer
---
comming soon

Citing & Authors
---
comming soon

Acknowledgements
---
comming soon
