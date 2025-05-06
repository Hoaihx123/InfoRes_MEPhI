import urllib.request
from lxml import html
# import spacy
# from spacy.lang.ru.stop_words import STOP_WORDS
import string

# nlp = spacy.load("ru_core_news_sm")

# def preprocess_text(text):
#     doc = nlp(text)
#     processed_tokens = []
#     for token in doc:
#         if token.text in string.punctuation:
#             continue
#         if token.text.lower() in STOP_WORDS:
#             continue
#         lemma = token.lemma_.lower()
#         processed_tokens.append(lemma)
#     return " ".join(processed_tokens)

def get_text(url):
    page_string = urllib.request.urlopen(url).read()
    page = html.fromstring(page_string)
    tags = page.xpath("//*[@class = 'document-page__content document-page_left-padding']/p")
    text = ''
    for tag in tags:
        text += tag.text_content() + '\n'
    return text

# Получить ссылку на все статьи
url = "https://www.consultant.ru/document/cons_doc_LAW_19671/"
page_string = urllib.request.urlopen(url).read()
page = html.fromstring(page_string)
list_stat = page.xpath("//*[@class = 'document-page__toc']/ul/ul/ul/li")
urls = []
for tags in list_stat:
    for tag in tags:
        urls.append("https://www.consultant.ru" + tag.attrib['href'])

print(get_text(urls[28]))